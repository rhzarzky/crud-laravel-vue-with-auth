//import vue router
import { createRouter, createWebHistory } from "vue-router";
//define a routes
const routes = [
  {
    path: "/",
    name: "login",
    component: () =>
      import(/* webpackChunkName: "siswa.login" */ "@/views/siswa/Login.vue"),
  },
  {
    path: "/create",
    name: "siswa.create",
    component: () =>
      import(/* webpackChunkName: "siswa.create" */ "@/views/siswa/Create.vue"),
  },
  {
    path: "/update/:id",
    name: "siswa.update",
    component: () =>
      import(/* webpackChunkName: "siswa.update" */ "@/views/siswa/Update.vue"),
  },
  {
    path: "/index",
    name: "siswa.index",
    component: () =>
      import(/* webpackChunkName: "siswa.index" */ "@/views/siswa/Index.vue"),
  },
  {
    path: "/register",
    name: "register",
    component: () =>
      import(
        /* webpackChunkName: "siswa.register" */ "@/views/siswa/Register.vue"
      ),
  },
  {
    path: "/user",
    name: "user",
    component: () =>
      import(/* webpackChunkName: "siswa.user" */ "@/views/siswa/User.vue"),
  },
];

//create router
const router = createRouter({
  history: createWebHistory(),
  routes, // config routes
});
export default router;
