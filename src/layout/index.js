import { Link } from 'umi'
import { Component } from 'react'
import { Layout, Menu, Icon } from 'antd'

// Header, Footer, Sider, Content组件在Layout组件模块下
const { Header, Footer, Sider, Content } = Layout

// 引入子菜单组件
const SubMenu = Menu.SubMenu

class BasicLayout extends Component {
  render() {
    return (
      <Layout>
        <Sider width={256} style={{ minHeight: '100vh' }}>
          <div
            style={{
              height: '32px',
              background: 'rgba(255,255,255,.2)',
              margin: '16px',
            }}
          />
          <Menu theme="dark" mode="inline" defaultSelectedKeys={['1']}>
            <Menu.Item key="1">
              <Link to="/helloworld" />
              <Icon type="pie-chart" />
              <span>HelloWorld</span>
            </Menu.Item>
            <SubMenu
              key="sub1"
              title={
                <span>
                  <Icon type="dashboard" />
                  Dashboard
                </span>
              }
            >
              <Menu.Item key="2">
                <Link to="/dashboard/analysis" /> 分析页
              </Menu.Item>
              <Menu.Item key="3">
                <Link to="/dashboard/monitor" />
                监控页
              </Menu.Item>
              <Menu.Item key="4">
                <Link to="/dashboard/workplace" />
                工作页
              </Menu.Item>
            </SubMenu>
          </Menu>
        </Sider>
        <Layout>
          <Header
            style={{ background: '#fff', textAlign: 'center', padding: 0 }}
          >
            Header
          </Header>
          <Content style={{ margin: '24px 16px 0' }}>
            <div style={{ padding: 24, background: '#fff', minHeight: 360 }}>
              {this.props.children}
            </div>
          </Content>
          <Footer style={{ textAlign: 'center' }}>
            Ant Design @2018 Created by Ant UED
          </Footer>
        </Layout>
      </Layout>
    )
  }
}

export default BasicLayout