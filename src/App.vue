<template>
  <!-- <div id="app">
    <h1>Hello World</h1>
  </div> -->
  <div id="app">
    <MainBody bgColor="#FDE2FF"/>
  </div>
</template>

<script>
import MainBody from "./components/MainBody.vue";

export default {
  name: "App",
  components: {
    MainBody,
  },
};
</script>

<style>
body {
  margin: 0;
}
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
  background-color: #fde2ff;
  background-size: cover;
  /* background-color: #f1f1f1; */
  /* margin: 20px; */
  /* padding: 100px; */
}
</style>
