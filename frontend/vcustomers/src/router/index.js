import Vue from 'vue'
import Router from 'vue-router'
import vueResource from 'vue-resource'
import vueRouter from 'vue-router'

import About from '@/components/about'
import Customers from '@/components/customers'
import Add from '@/components/add'
import CustomerDetails from '@/components/customerdetails'
import Edit from '@/components/edit'

Vue.use(Router)
Vue.use(vueResource)

export default new Router({
  mode: 'history',
  base: __dirname,
  routes: [
    {
      path: '/',
      name: 'Customers',
      component: Customers
    },
    {
      path: '/about',
      name: 'About',
      component: About
    },
    {
      path: '/add',
      name: 'Add',
      component: Add
    },
    {
      path: '/customer/:id',
      name: 'CustomerDetails',
      component: CustomerDetails
    },
    {
      path: '/edit/:id',
      name: 'Edit',
      component: Edit
    }
  ]
})
