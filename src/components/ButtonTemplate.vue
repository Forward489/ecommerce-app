<template>
  <button
    :style="{ background: colorBg, color: textColor }"
    class="button-3"
    @click="onClick()"
  >
    <p>{{ title }}</p>
  </button>
</template>

<script>
export default {
  name: "ButtonTemplate",
  props: {
    title: String,
    colorBg: String,
    textColor: String,
    titlePrice: {
      type: String,
    },
  },
  methods: {
    onClick() {
      console.log("click");
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

p {
  margin: 0;
  font-weight: bold;
}

/* CSS */
.button-3 {
  appearance: none;
  /* background-color: #2ea44f; */
  /* background: #2ea44f; */
  /* max-width: 200px; */
  font-weight: bold;
  width: 200%;
  margin: 5px;
  border: 3px solid "#002772";
  border-radius: 6px;
  box-shadow: rgba(27, 31, 35, 0.1) 0 1px 0;
  box-sizing: border-box;
  /* color: #fff; */
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system, system-ui, "Segoe UI", Helvetica, Arial,
    sans-serif, "Apple Color Emoji", "Segoe UI Emoji";
  font-size: 14px;
  font-weight: 600;
  line-height: 20px;
  padding: 6px 16px;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  white-space: nowrap;
}

/* .button-3:focus:not(:focus-visible):not(.focus-visible) {
  box-shadow: none;
  outline: none;
}

.button-3:hover {
  background-color: #2c974b;
}

.button-3:focus {
  box-shadow: rgba(46, 164, 79, .4) 0 0 0 3px;
  outline: none;
}

.button-3:disabled {
  background-color: #94d3a2;
  border-color: rgba(27, 31, 35, .1);
  color: rgba(255, 255, 255, .8);
  cursor: default;
}

.button-3:active {
  background-color: #298e46;
  box-shadow: rgba(20, 70, 32, .2) 0 1px 0 inset;
} */
</style>