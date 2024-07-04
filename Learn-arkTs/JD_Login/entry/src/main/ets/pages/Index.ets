@Entry
@Component
struct Index {
    @State message: string = '请输入手机号';

    build() {
        Column(){
            // 顶部区域
            Row(){
                Image($r('app.media.jd_cancel'))
                    .width(20)
                Text('帮助')
            }
            // .backgroundColor(Color.Pink)
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)

            // JD_logo
            Image($r('app.media.jd_logo'))
                .width(250)

            // 国家/地址
            Row(){
                Text('国家/地址')
                    .layoutWeight(1)
                    .fontSize(15)
                    .fontColor('#666')
                Text('中国(+86)')
                    .fontSize(15)
                    .fontColor('#666')
                Image($r('app.media.jd_right'))
                    .width(20)
            }
            .width('100%')
            .height(40)
            .backgroundColor('#fff')
            .borderRadius(20)
            .padding({ left: 10, right: 10 })
            .margin(15)

            // 请输入手机号
            TextInput({
                placeholder: this.message
            })
                .placeholderColor('#666')
                .height(40)
                .backgroundColor('#fff')
                .borderRadius(20)

            // 同意条款
            Row(){
                Checkbox()
                    .width(10)
                Text(){
                    Span('我已经阅读并同意')
                    Span('《京东隐私政策》').fontColor('#3274f6')
                    Span('《京东用户服务协议》').fontColor('#3274f6')
                    Span('未注册的手机号将自动创建京东账号')
                }
                .fontSize(12)
                .padding({right: 10})
                .lineHeight(20)

            }
            .margin({top:20})
            .alignItems(VerticalAlign.Top)

            // 登录
            Button('登录')
                .width('100%')
                .backgroundColor('#bf2838')
                .margin({top:25})

            // 注册、用户密码登录、无法登录
            Row({space: 20}){
                Text('新用户注册').fontSize(14).fontColor('#666')
                Text('新用户密码登录').fontSize(14).fontColor('#666')
                Text('无法登录').fontSize(14).fontColor('#666')
            }
            .margin({top: 15})

            // 填充组建： 用于填充空白区域（弹簧）
            Blank()

            Column(){
                // 其他登录方式
                Text('其他登录方式')
                    .height(22)
                    .fontColor('#666')
                    .fontSize(15)
                    .margin({ bottom: 28})

                // 第三方logo
                Row({space: 30}){
                    Image($r('app.media.jd_huawei')).width(34)
                    Image($r('app.media.jd_wechat')).width(34).fillColor('#56a44a')
                    Image($r('app.media.jd_weibo')).width(34).fillColor('#c8493b')
                    Image($r('app.media.jd_QQ')).width(34).fillColor('#4ba0e8')
                }
                .width('100%')
                .margin({ bottom: 40})
                .justifyContent(FlexAlign.SpaceAround)
            }
            .width('100%')

        }
        .padding(20)
        .height('100%')
        .width('100%')
        .backgroundColor(Color.Pink)
        .backgroundImage($r('app.media.jd_login_bg'))
    }
}