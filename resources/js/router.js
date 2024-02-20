import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)
import Home from './components/Home'
import Hello from './components/Hello'
import HomeProd from './components/sub/HomeProd'
import HomeProdSelect from './components/sub/HomeProdSelect'

export default new VueRouter({
    mode: 'history',
    routes: [
        {
            path: '/home',
            name: 'home',
            component: Home
        },
        {
            path: '/home/:param',
            name: 'homeprod',
            component: HomeProd
        },
        {
            path: '/home/:param/:param1',
            name: 'homeprodselect',
            component: HomeProdSelect
        },
        {
            path: '/hello',
            name: 'hello',
            component: Hello
        },
    ],
});