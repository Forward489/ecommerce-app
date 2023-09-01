<template>
    <div class="wrapper">
        <!-- 
            <div v-for="p in product" :key="p.id">
                <p>{{ p.id }}</p>
            </div> 
        -->
        <div :class="bgColor">

        </div>
        <div class="white">

        </div>
        <CardWrapper :product="product" titlePrice="#002772"/>
    </div>
</template>

<script>
    // console.log(product);
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
            },
            product: {
                type: Array,
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

    .main-bg-female {
        background: #FDE2FF;
        background-image: url('~@/assets/bg-pattern.png');
        height: 65%;
        width: 100%;
    }

    .main-bg-male {
        background: #D6E6FF;
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