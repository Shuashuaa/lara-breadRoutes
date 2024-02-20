<template>
    <div>
        <v-card v-for="(obj, i) in arrObj" :key="i" :to="'home/' + obj.param" elevation="0">
            <v-btn block @click="getItemParameter(obj)">{{ obj.text }}</v-btn>
            <!-- <v-btn></v-btn> -->
        </v-card>
    </div>
    
</template>

<script>
export default {
    data() {
        return {
            arrObj: [
                {text:'cat', param:'cat'},
                {text:'dog', param:'dog'},
                {text:'panda', param:'panda'},
                {text:'parrot', param:'parrot'},
                {text:'hamster', param:'hamster'}
            ]
        }
    },

    methods: {
        getItemParameter(obj){
            axios({
                method: 'post',
                url:`api/home/${obj.param}`,
                data: {param : 'ito yung param na ipapasa' + obj.param }
            }).then((r)=>{

            })
        },
    },
}
</script>


