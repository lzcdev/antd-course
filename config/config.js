export default {
  singular: true,
  // plugins: [
  //   ['umi-plugin-react', {
  //     antd: true
  //   }]
  // ],
  antd: {

  },
  routes: [{
    path: '/',
    component: '../layout',
    routes: [
      {
        path: 'helloworld',
        component: './HelloWorld'
      }
    ]
  }]
}