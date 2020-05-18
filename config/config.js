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
        path: '/',
        component: './HelloWorld'
      },
      {
        path: '/helloworld',
        component: 'helloworld'
      },
      {
        path: '/dashboard',
        routes: [
          { path: '/dashboard/analysis', component: 'Dashboard/Analysis' },
          { path: '/dashboard/monitor', component: 'Dashboard/Monitor' },
          { path: '/dashboard/workplace', component: 'Dashboard/Workplace' }
        ]
      }
    ]
  }]
}