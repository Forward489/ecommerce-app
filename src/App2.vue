<template>
  <!-- <div id="app">
    <h1>Hello World</h1>
  </div> -->
  <div id="app">
    <WebHeader title="Hello World" />
    <TaskLists :tasks="tasks" />
  </div>
</template>

<script>
import WebHeader from "./components/WebHeader.vue";
import TaskLists from "./components/TaskLists.vue";

export default {
  name: "App",
  components: {
    WebHeader,
    TaskLists,
  },
  data() {
    return {
      tasks: [],
    };
  },
  created() {
    this.tasks = [
      {
        id: 1,
        title: "Task One",
        description:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum.",
      },
      {
        id: 2,
        title: "Task Two",
        description:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum.",
      },
      {
        id: 3,
        title: "Task Three",
        description:
          "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptatum.",
      },
    ];
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  /* text-align: center; */
  color: #2c3e50;
  /* margin-top: 60px; */
  background-color: #f1f1f1;
  margin: 0 0 20px 0;
  padding: 20px;
  /* display: flex;
  align-items: space-between;
  background-color: #f1f1f1;
  margin: 0 0 20px 0;
  padding: 20px;

  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px; */
}
</style>
