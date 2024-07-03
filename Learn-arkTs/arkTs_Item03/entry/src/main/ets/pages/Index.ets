@Entry
@Component
struct Index {
    @State message: string = 'Hello World';

    build() {
        Column({space:15}){
            Row(){
                Column({space: 10}){
                    Text('玩一玩')
                        .fontSize(20)
                        .fontWeight(FontWeight.Bold)
                    Text('签到兑礼 | 超多大奖 超好玩')
                        .fontSize(15)
                        .fontColor('#999')
                }
                .alignItems(HorizontalAlign.Start)

                Row({space: 5}){
                    Image($r('app.media.Alice_b'))
                        .width(50)
                        .backgroundColor('#efefef')
                        .borderRadius(10)
                    Image($r('app.media.foreground'))
                        .width(20)
                        .fillColor('#999')
                }
            }
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({left: 15, right: 15})
            .width('100%')
            .height(80)
            .backgroundColor('#fff')
            .borderRadius(5)

            // layoutWeight 自适应伸缩： 按照份数权重，分配剩余空间
            Row(){
                Text('左侧')
                    .layoutWeight(1)
                    .height(50)
                    .backgroundColor(Color.Pink)
                Text('右侧固定')
                    .width(80)
                    .height(50)
                    .backgroundColor(Color.Orange)
            }
            .width(300)
            .height(50)
            .backgroundColor('#fff')

            Row(){
                Text('One')
                    .layoutWeight(1)
                    .height(50)
                    .backgroundColor(Color.Orange)
                Text('Two')
                    .layoutWeight(1)
                    .height(50)
                    .backgroundColor(Color.Gray)
                Text('Three')
                    .layoutWeight(2)
                    .height(50)
                    .backgroundColor(Color.Brown)
                Text('Four')
                    .layoutWeight(3)
                    .height(50)
                    .backgroundColor(Color.Pink)
            }
            .width(300)
            .height(50)
            .backgroundColor('#fff')
            .margin({top: 15})
        }
        .height('100%')
        .width('100%')
        .backgroundColor('#ccc')
        .padding(10)
    }
}