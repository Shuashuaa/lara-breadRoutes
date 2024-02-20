<template>
    <div style="display: block;">
        <v-btn :to="'/home' + '/' + this.$router.history.current.params.param" class="mb-5">home products</v-btn>

        <v-progress-linear
            :active="loadValue != 0"
            :indeterminate="loadValue != 0"
            color="#1976d2"
        ></v-progress-linear>

        <v-card v-for="(data, i) in dataFromHomeProdSelected" :key="i">
            {{ data.breed }}
            <v-img width="500" :src="data.breed_img" @load="onImageLoad(i)"></v-img>
        </v-card>
    </div>
</template>

<script>
export default {
    data() {
        return {
            dataFromHomeProdSelected: [],
            loadValue: 1,
        }
    },

    methods: {
        getDataFromParamTypeSelected(){
            // console.log(this.$router.history.current.path)
            axios({
                method: 'post',
                url:`../../api/home/${this.$router.history.current.params.param}/${this.$router.history.current.params.param1}`,
                data: { 
                    param : this.$router.history.current.params.param,
                    param1 : this.$router.history.current.params.param1,
                }
            }).then((r)=>{
                console.log(r.status, 'typessssssssssss')
                this.loadStatus = r.status
                this.dataFromHomeProdSelected = r.data;
            })
        },

        onImageLoad(value){
            console.log(value, 'get load value for linear progress')
            this.loadValue = value;
        }
    },

    mounted() {
        this.getDataFromParamTypeSelected();
    },
}
</script>