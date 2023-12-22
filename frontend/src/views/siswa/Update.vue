<template>
  <div class="container mt-5">
    <div class="row">
      <div class="col-md-12">
        <div class="card border-0 rounded shadow">
          <div class="card-body">
            <h4>EDIT SISWA</h4>
            <hr />

            <form @submit.prevent="update">
              <div class="form-group">
                <label for="title" class="font-weight-bold">Nama Siswa</label>
                <input
                  type="text"
                  class="form-control"
                  v-model="post.nama"
                  placeholder="Masukkan nama siswa"
                />

                <!-- validation -->
                <div v-if="validation.nama" class="mt-2 alert alert-danger">
                  {{ validation.nama[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">Alamat</label>
                <input
                  type="text"
                  class="form-control"
                  v-model="post.alamat"
                  placeholder="Nama jalan dan nomor rumah"
                />

                <!-- validation -->
                <div v-if="validation.alamat" class="mt-2 alert alert-danger">
                  {{ validation.alamat[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">Kota</label>
                <input
                  type="text"
                  class="form-control"
                  v-model="post.kota"
                  placeholder="Masukkan nama kota tempat tinggal"
                />

                <!-- validation -->
                <div v-if="validation.kota" class="mt-2 alert alert-danger">
                  {{ validation.kota[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">Provinsi</label>
                <input
                  type="text"
                  class="form-control"
                  v-model="post.provinsi"
                  placeholder="Masukkan nama provinsi tempat tinggal"
                />

                <!-- validation -->
                <div v-if="validation.provinsi" class="mt-2 alert alert-danger">
                  {{ validation.provinsi[0] }}
                </div>
              </div>

              <div class="form-group">
                <label for="title" class="font-weight-bold">E-mail</label>
                <input
                  type="text"
                  class="form-control"
                  v-model="post.email"
                  placeholder="Masukkan alamat email siswa"
                />

                <!-- validation -->
                <div v-if="validation.email" class="mt-2 alert alert-danger">
                  {{ validation.email[0] }}
                </div>
              </div>
              <hr />
              <button type="submit" class="btn btn-primary">SIMPAN</button>
              <router-link :to="{ name: 'user' }" class="btn btn-secondary"
                >CANCEL</router-link
              >
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { reactive, ref } from "vue";
import { useRouter, useRoute } from "vue-router";
import axios from "axios";

export default {
  setup() {
    // Get the route parameter (siswa id)
    const route = useRoute();
    const siswaId = ref(route.params.id);

    // Initial state siswa
    const post = reactive({
      nama: "",
      alamat: "",
      kota: "",
      provinsi: "",
      email: "",
    });

    // State validation
    const validation = ref([]);

    // Vue router
    const router = useRouter();

    // Load existing data when the component is mounted
    const loadData = () => {
      axios
        .get(`http://localhost:8000/api/siswa/${siswaId.value}`)
        .then((response) => {
          // Assign state post with response data
          Object.assign(post, response.data.data);
        })
        .catch((error) => {
          console.log(error.response.data);
        });
    };

    // Method update
    const update = () => {
      let nama = post.nama;
      let alamat = post.alamat;
      let kota = post.kota;
      let provinsi = post.provinsi;
      let email = post.email;

      axios
        .put(`http://localhost:8000/api/siswa/${siswaId.value}`, {
          nama: nama,
          alamat: alamat,
          kota: kota,
          provinsi: provinsi,
          email: email,
        })
        .then(() => {
          // Redirect to user page after successful update
          router.push({ name: "user" });
        })
        .catch((error) => {
          // Assign state validation with error
          validation.value = error.response.data;
        });
    };

    // Load existing data when the component is mounted
    loadData();

    // Return
    return {
      post,
      validation,
      router,
      update,
    };
  },
};
</script>

<style>
body {
  background: lightgray;
}
</style>
