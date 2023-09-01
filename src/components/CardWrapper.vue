<template>
  <div class="content-wrapper">
    <div class="card">
      <div v-for="p in product" :key="p.id">
        <div class="wrap">
          <div class="clothes">
            <img :src="p.image" alt="" class="product" />
          </div>
          <div class="text">
            <h2 class="title">{{ p.title }}</h2>
            <div class="rating-section">
              <div class="top-level">
                <p class="category">{{ p.category }}</p>
              </div>
              <div class="elipse-wrap">
                <p class="rating-text">{{ p.rating.rate }}/5</p>
                <div class="elipse-group">
                  <img
                    class="rating"
                    src="~@/assets/elipse-full-male.png"
                    width="15px"
                    height="15px"
                    alt=""
                  />
                  <img
                    class="rating"
                    src="~@/assets/elipse-full-male.png"
                    width="15px"
                    height="15px"
                    alt=""
                  />
                  <img
                    class="rating"
                    src="~@/assets/elipse-full-male.png"
                    width="15px"
                    height="15px"
                    alt=""
                  />
                  <img
                    class="rating"
                    src="~@/assets/elipse-blank-male.png"
                    width="15px"
                    height="15px"
                    alt=""
                  />
                  <img
                    class="rating"
                    src="~@/assets/elipse-blank-male.png"
                    width="15px"
                    height="15px"
                    alt=""
                  />
                </div>
              </div>
            </div>
            <hr />
            <p class="description">{{ p.description }}</p>
            <!-- <p>{{ p.rating.count }}</p> -->
            <hr />
            <h2 class="price">${{ p.price }}</h2>
            <div class="card-wrapper">
              <ButtonTemplate
                colorBg="#002772"
                title="Buy Now"
                textColor="#fff"
                titlePrice="3px solid #002772"
              />
              <ButtonTemplate title="Next Product" textColor="#002772" titlePrice="3px solid #002772"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import ButtonTemplate from "./ButtonTemplate.vue";

export default {
  name: "CardWrapper",
  components: {
    ButtonTemplate,
  },
  props: {
    product: {
      type: Array,
    },
    titlePrice: {
      type: String,
    },
  },
  computed: {
    color() {
      return {
        // "background-color": this.bgColor,
        "--titlePrice" : this.titlePrice,
      };
    },
  },
};
</script>

<style scoped>
.content-wrapper {
  /* --titlePrice: #720060; */
  --white: #ffffff;
  /* --blue: #002772; */

  --headline: #dcdcdc;
  --description: #1e1e1e;
  --category: #3f3f3f;

  font-family: "Arial";
  position: absolute;
  /* background-color: rgba(0, 128, 0, 0.381); */
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.title,
.price {
  color: var(--titlePrice);
}

.rating-section {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}

.product {
  max-width: 300px;
  max-height: 400px;
  width: 100%;
  height: 100%;
  margin-right: 100px;
  /* border: 1px solid #720060; */
}

.description {
  margin-bottom: 75px;
  color: var(--description);
}

hr {
  display: block;
  /* height: 1px; */
  border: 0;
  border-top: 1px solid var(--headline);
  /* margin: 1em 0; */
  padding: 0;
}

.card {
  max-height: 100%;
  max-width: 65%;
  background-color: white;
  padding: 36px 48px;
  box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
}

.wrap {
  display: flex;
  /* flex-direction: column; */
  justify-content: center;
}

.clothes {
  margin-right: 20px;
}

.top-level {
  margin-top: 17.5px;
}
.card-wrapper {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  /* 
  justify-content: center;
  align-items: center;
  margin-left: 20px; */
}

.category {
  color: var(--category);
  margin-bottom: 0;
}

.elipse-wrap {
  height: 50%;
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  /* border: 1px solid red; */
  margin-top: 2%;
  /* 
  justify-content: center;
  align-items: center;
  margin-left: 20px; */
}

.elipse-full,
.elipse-full-2 {
  /* Ellipse 5 */

  position: absolute;
  width: 18px;
  height: 18px;
  left: 1016px;
  top: 271px;
  border-radius: 100%;
  background: #720060;
}

.elipse,
.elipse-1 {
  /* Ellipse 2 */

  box-sizing: border-box;
  border-radius: 100%;
  position: absolute;
  width: 18px;
  height: 18px;
  left: 1076px;
  top: 271px;

  background: #ffffff;
  border: 1px solid #720060;
}

.elipse-group {
  margin: 17.5px 5px 0 10px;
  /* margin-top: 10%; */
}

.rating {
  margin-right: 2px;
}
</style>