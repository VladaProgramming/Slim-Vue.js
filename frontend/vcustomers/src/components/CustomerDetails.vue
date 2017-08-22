<template>
  <div class="Details container">
    <router-link to="/">Back</router-link>
    <h1 class="page-header">{{customer.first_name}} {{customer.last_name}}
      <router-link class="btn btn-primary" v-bind:to="'/edit/'+customer.id">Edit</router-link>
      <span class="pull-right"><button class="btn btn-danger" v-on:click="deleteCustomer(customer.id)">Delete</button></span>
    </h1>
    <ul class="list-group">
            <li class="list-group-item"><span class="glyphicon glyphicon-phone" aria-hidden="true"></span> {{customer.phone}}</li>
            <li class="list-group-item"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> {{customer.email}}</li>
        </ul>

        <ul class="list-group">
            <li class="list-group-item"> {{customer.address}}</li>
            <li class="list-group-item">{{customer.city}}</li>
            <li class="list-group-item">{{customer.state}}</li>
        </ul>
  </div>
</template>

<script>
export default {
  name: 'CustomerDetails',
  data () {
    return {
      customer:''
    }
  },
  methods:{
    fetchCustomers(id){
      this.$http.get('http://slim-app/api/customer/'+id)
      .then(function(response){
        this.customer = (response.body);
      });
  },
  deleteCustomer(id){
    this.$http.delete('http://slim-app/api/customer/delete/'+id)
    .then(function(response){
      this.$router.push({path: '/', query: {alert: 'Customer deleted'}})
    });
  }
},
  created: function(){
    this.fetchCustomers(this.$route.params.id);
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

</style>
