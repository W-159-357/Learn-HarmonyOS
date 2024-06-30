@Entry
@Component
struct Index {
    @State message: string = 'Login';
    @State username: string = 'username'
    @State password: string = 'password'

    build() {
        // space用于控制Column组件中的间距
        Column({space: 20}){
            Image($r('app.media.huawei_logo'))
                .width(100)
                .margin(70)
            TextInput({
                placeholder: this.username
            })
            TextInput({
                placeholder: this.password
            }).type(InputType.Password)
            Button('登录')
                .width('100%')
            Row({space: 15}){
                Text('前往注册')
                Text('忘记密码')
            }
            .border({
                width:{ left: 2, right: 2 },
                color:{ left: Color.Red, right: Color.Green },
                style:{ left: BorderStyle.Dashed, right: BorderStyle.Dotted }
            })
        }
        .width('100%')
        .height('100%')
        .padding({
            left: 20,
            right: 20,
            top: 60,
            bottom: 40
        })
    }
}