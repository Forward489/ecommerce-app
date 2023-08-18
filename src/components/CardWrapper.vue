<template>
  <div class="content-wrapper">
    <div class="card">Baju</div>
  </div>
</template>

<script>
export default {
  name: "CardWrapper",
};
</script>

<style scoped>
.content-wrapper {
  position: absolute;
  /* background-color: rgba(0, 128, 0, 0.381); */
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

.card {
  max-height: 100%;
  max-width: 100%;
  background-color: white;
  padding: 36px 48px;
  box-shadow: 0px 10px 15px -3px rgba(0, 0, 0, 0.1);
  border-radius: 5px;
}
</style>