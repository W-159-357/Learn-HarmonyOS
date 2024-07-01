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
                width:{ left: 3, right: 3 },
                color:{ left: Color.Red, right: Color.Green },
                style:{ left: BorderStyle.Dashed, right: BorderStyle.Dotted }
            })
            Row({space: 30}){
                // 正圆(多用于头像)
                Text('正圆')
                    .width(100)
                    .height(100)
                    .borderRadius(50)           // 需要为宽和高的一半
                    .backgroundColor(Color.Red)
                    .textAlign(TextAlign.Center)
                // 胶囊按钮（左右半圆）
                Text('胶囊按钮')
                    .width(150)
                    .height(50)
                    .borderRadius(25)           // 需要为高的一半
                    .backgroundColor(Color.Pink)
                    .textAlign(TextAlign.Center)
            }
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