<template>
  <!-- <div id="app">
    <h1>Hello World</h1>
  </div> -->
  <div id="app">
    <MainBody :product="this.product" bgColor="main-bg-male"/>
  </div>
</template>

<script>
import MainBody from "./components/MainBody.vue";

export default {
  name: "App",
  components: {
    MainBody,
  },
  data() {
    return {
      product: [],
    };
  },
  created() {
    // return fetch("https://fakestoreapi.com/products/1")
    //   .then((response) => response.json())
    //   .then((json) => {
    //     this.product = json;
    //     console.log(this.product)
    //   });
    this.product = [
        {
        "id": 1,
        "title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
        "price": 109.95,
        "description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
        "category": "men's clothing",
        "image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
        "rating": {
          "rate": 3.9,
          "count": 120
        }
      }
    ]
  }
  /* 
    
  */
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
