<template>
    <div class="wrapper">
        <div class="main-bg" :style="bgColor">

        </div>
        <div class="white">

        </div>
        <CardWrapper />
    </div>
</template>

<script>
    import CardWrapper from "./CardWrapper.vue";
    export default {
        name: "MainBody",
        components: {
            CardWrapper
        },
        props: {
            bgColor: {
                type: String,
                // default: "#FDE2FF"
            }
        },
        computed: {
            color(){
                return {
                    "background-color": this.bgColor
                }
            }
        }
    }
</script>

<style scoped>
    body{
        margin: 0;
        min-width: 100vw;
        min-height: 100vh;
    }
    .wrapper{
        width: 100vw;
        height: 100vh;
        display: flex;
        flex-direction: column;
        position: relative;
    }

    .main-bg{
        /* background: #FDE2FF; */
        background-image: url('~@/assets/bg-pattern.png');
        height: 65%;
        width: 100%;
    }

    .white{
        background-color: white;
        height: 35%;
        width: 100%;
    }
</style>