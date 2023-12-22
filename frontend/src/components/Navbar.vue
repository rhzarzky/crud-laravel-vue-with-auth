<template>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
      <router-link class="navbar-brand" :to="{ name: 'siswa.index' }"
        >Front End</router-link
      >

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <router-link class="nav-link" :to="{ name: 'login' }"
              >Login</router-link
            >
          </li>
          <li class="nav-item">
            <router-link class="nav-link" :to="{ name: 'register' }"
              >Register</router-link
            >
          </li>
          <li class="nav-item">
            <router-link class="nav-link" :to="{ name: 'login' }"
              >Logout</router-link
            >
          </li>
        </ul>
      </div>
    </div>
  </nav>
</template>

<!-- <script>
export default {
  data() {
    return {
      isLoggedIn: false,
    };
  },
  methods: {
    logout() {
      console.log("Logout clicked");
      // Menyimpan status login di Vuex atau penyimpanan lainnya
      this.$store.commit("setLoggedIn", false);
      // Kembali ke halaman tampilan awal (index.vue)
      this.$router.push({ name: "siswa.index" });
    },
  },
  watch: {
    // Watch status login dari Vuex atau penyimpanan lainnya
    $store: {
      handler() {
        this.isLoggedIn = this.$store.getters.isLoggedIn;
      },
      deep: true,
    },
  },
};
</script> -->
