<template>
  <div id="app">
    <Navbar />
    <router-view></router-view>
  </div>
</template>
<!-- <script>
    export default {
    }
    </script> -->

<script>
import Navbar from "@/components/Navbar.vue";

export default {
  components: {
    Navbar,
  },
};
</script>
