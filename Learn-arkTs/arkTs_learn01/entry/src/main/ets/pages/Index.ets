@Entry
@Component
struct Index {
    @State message: string = 'HarmonyOS,温度计我空格可靠乱罚款免费观看藕丝疾厄宫开发工具啥盎司耦合将会给代替哦加快谋划放接哦';

    build() {
        RelativeContainer() {
            Column(){
                Text(this.message)
                    .fontSize(35)
                    .fontColor(Color.Black)
                    .fontWeight(FontWeight.Bolder)
                    .width('100%')
                    .lineHeight(50)
                    .maxLines(2)
                    .textOverflow({
                        overflow: TextOverflow.Ellipsis
                    })
                Row(){
                    Text('cpp').fontSize(20).backgroundColor(Color.Blue).width('25%')
                    Text('java').fontSize(20).backgroundColor(Color.Brown).width('25%')
                    Text('python').fontSize(20).backgroundColor(Color.Gray).width('25%')
                    Text('C#').fontSize(20).backgroundColor(Color.Orange).width('25%')
                }
                .width('100%')
                Column(){
                    Image('data:image/jpeg;base64,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')
                        .width('100%')
                    Text('Harmony OS')
                        .fontSize(20)
                        .lineHeight(50)
                        .width('100%')
                        .fontColor(Color.Gray)


                }
            }
            .width('100%')
        }
        .height('100%')
        .width('100%')
    }
}