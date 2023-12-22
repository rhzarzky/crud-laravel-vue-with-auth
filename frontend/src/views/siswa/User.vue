<template>
  <div class="container mt-5">
    <div class="row">
      <div class="col-md-12">
        <div class="card border-0 rounded shadow">
          <div class="card-body">
            <h4>DATA SISWA</h4>
            <hr />
            <router-link
              :to="{ name: 'siswa.create' }"
              class="btn btn-md btn-success"
              >TAMBAH SISWA</router-link
            >
            <button
              v-if="isLoggedIn"
              class="btn btn-md btn-danger"
              @click="logout"
            >
              Logout
            </button>
            <table class="table table-striped table-bordered mt-4">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">Nama</th>
                  <th scope="col">Alamat</th>
                  <th scope="col">Kota</th>
                  <th scope="col">Provinsi</th>
                  <th scope="col">E-mail</th>
                  <th scope="col">Aksi</th>
                </tr>
              </thead>
              <tbody>
                <tr v-for="(siswa, index) in posts.data" :key="index">
                  <td>{{ siswa.nama }}</td>
                  <td>{{ siswa.alamat }}</td>
                  <td>{{ siswa.kota }}</td>
                  <td>{{ siswa.provinsi }}</td>
                  <td>{{ siswa.email }}</td>
                  <td class="text-center">
                    <router-link
                      :to="{ name: 'siswa.update', params: { id: siswa.id } }"
                      class="btn btn-sm btn-primary mr-1"
                      >Edit</router-link
                    >
                    <button
                      @click="confirmDelete(siswa.id)"
                      class="btn btn-sm btn-danger ml-1"
                    >
                      Delete
                    </button>
                  </td>
                </tr>
              </tbody>
            </table>
            <nav aria-label="Page navigation">
              <ul class="pagination">
                <li class="page-item" :class="{ disabled: currentPage === 1 }">
                  <button
                    class="page-link"
                    @click="changePage(currentPage - 1)"
                    :disabled="currentPage === 1"
                  >
                    Previous
                  </button>
                </li>
                <li
                  class="page-item"
                  v-for="page in totalPages"
                  :key="page"
                  :class="{ active: page === currentPage }"
                >
                  <button class="page-link" @click="changePage(page)">
                    {{ page }}
                  </button>
                </li>
                <li
                  class="page-item"
                  :class="{ disabled: currentPage === totalPages }"
                >
                  <button
                    class="page-link"
                    @click="changePage(currentPage + 1)"
                    :disabled="currentPage === totalPages"
                  >
                    Next
                  </button>
                </li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";
import { ref, onMounted } from "vue";

export default {
  setup() {
    let posts = ref([]);
    let currentPage = ref(1);
    let totalPages = ref(1);

    onMounted(() => {
      fetchData();
    });

    const fetchData = () => {
      axios
        .get(`http://localhost:8000/api/siswa?page=${currentPage.value}`)
        .then((response) => {
          if (response && response.data) {
            posts.value = response.data.data;
            totalPages.value = response.data.meta.last_page;
          } else {
            console.error("Invalid response structure:", response);
          }
        })
        .catch((error) => {
          console.error(
            "Error fetching data:",
            error.response ? error.response.data : error.message
          );
        });
    };
    const changePage = (page) => {
      if (page >= 1 && page <= totalPages.value) {
        currentPage.value = page;
        fetchData();
      }
    };

    const confirmDelete = (siswaId) => {
      const isConfirmed = window.confirm(
        "Apakah anda yakin untuk menghapus data ini?"
      );
      if (isConfirmed) {
        // Perform delete action here using siswaId
        axios.delete(`http://localhost:8000/api/siswa/${siswaId}`).then(() => {
          // Update posts after successful delete
          fetchData(posts.value.currentPage);
          // posts.value = posts.value.filter((siswa) => siswa.id !== siswaId);
        });
        // .catch((error) => {
        //   console.log(error.response.data);
        // });
      }
    };

    return {
      posts,
      currentPage,
      totalPages,
      changePage,
      confirmDelete,
    };
  },
};
</script>

<style>
body {
  background: lightgray;
}
</style>
