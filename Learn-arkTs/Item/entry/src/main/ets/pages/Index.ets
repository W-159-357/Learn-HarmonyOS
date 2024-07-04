@Entry
@Component
struct Index {
    @State message: string = 'Hello World';

    build() {
        Column(){
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
                        .borderRadius(5)
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
        }
        .height('100%')
        .width('100%')
        .backgroundColor('#ccc')
        .padding(10)
    }
}