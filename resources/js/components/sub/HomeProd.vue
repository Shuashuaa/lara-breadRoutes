<template>
    <div style="display: block;">
        <v-btn to="/home" class="mb-5">home</v-btn>

        <v-card v-for="(data, i) in dataFromHome" :key="i" :to="data.kind + '/' + data.breed" elevation="0">
            <!-- {{ data.kind + '/' + data.breed }} -->
            <v-btn block>{{ data.kind + '/' + data.breed }}</v-btn>
            <!-- <v-img @click="getDataFromParamTypes(data.breed)" width="500" :src="data.img" style="cursor:pointer;"></v-img> -->
        </v-card>
    </div>
</template>

<script>
export default {
    data() {
        return {
            dataFromHome: [],
        }
    },

    methods: {
        getDataFromParam(){
            // console.log(this.$router.history.current.path)
            axios({
                method: 'post',
                url:`../api/home/${this.$router.history.current.params.param}`,
                data: { param : this.$router.history.current.params.param }
            }).then((r)=>{
                console.log(r)
                this.dataFromHome = r.data;
            })
        },
    },

    mounted() {
        this.getDataFromParam();
    },
}
</script>