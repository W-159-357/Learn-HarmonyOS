if (!("finalizeConstruction" in ViewPU.prototype)) {
    Reflect.set(ViewPU.prototype, "finalizeConstruction", () => { });
}
interface Index_Params {
    message?: string;
}
class Index extends ViewPU {
    constructor(parent, params, __localStorage, elmtId = -1, paramsLambda = undefined, extraInfo) {
        super(parent, __localStorage, elmtId, extraInfo);
        if (typeof paramsLambda === "function") {
            this.paramsGenerator_ = paramsLambda;
        }
        this.__message = new ObservedPropertySimplePU('Hello World', this, "message");
        this.setInitiallyProvidedValue(params);
        this.finalizeConstruction();
    }
    setInitiallyProvidedValue(params: Index_Params) {
        if (params.message !== undefined) {
            this.message = params.message;
        }
    }
    updateStateVars(params: Index_Params) {
    }
    purgeVariableDependenciesOnElmtId(rmElmtId) {
        this.__message.purgeDependencyOnElmtId(rmElmtId);
    }
    aboutToBeDeleted() {
        this.__message.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id__());
        this.aboutToBeDeletedInternal();
    }
    private __message: ObservedPropertySimplePU<string>;
    get message() {
        return this.__message.get();
    }
    set message(newValue: string) {
        this.__message.set(newValue);
    }
    initialRender() {
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Index.ets(7:9)");
            Column.height('100%');
            Column.width('100%');
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Column.create();
            Column.debugLine("entry/src/main/ets/pages/Index.ets(8:13)");
            Column.width(160);
            Column.height(240);
            Column.margin(5);
        }, Column);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            // 定位的vip
            Text.create('VIP');
            Text.debugLine("entry/src/main/ets/pages/Index.ets(10:17)");
            // 定位的vip
            Text.position({});
            // 定位的vip
            Text.zIndex(3);
            // 定位的vip
            Text.width(40);
            // 定位的vip
            Text.height(20);
            // 定位的vip
            Text.backgroundColor('#e49642');
            // 定位的vip
            Text.borderRadius({ topLeft: 10, bottomRight: 10 });
            // 定位的vip
            Text.textAlign(TextAlign.Center);
            // 定位的vip
            Text.border({ width: 2, color: '#fbe7a3' });
            // 定位的vip
            Text.fontColor('#fbe7a3');
            // 定位的vip
            Text.fontStyle(FontStyle.Italic);
            // 定位的vip
            Text.fontSize(14);
            // 定位的vip
            Text.fontWeight(700);
        }, Text);
        // 定位的vip
        Text.pop();
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Image.create({ "id": 16777227, "type": 20000, params: [], "bundleName": "com.VIP_image.myapplication", "moduleName": "entry" });
            Image.debugLine("entry/src/main/ets/pages/Index.ets(24:17)");
            Image.width('100%');
            Image.height(210);
            Image.borderRadius({ topLeft: 15 });
        }, Image);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Row.create();
            Row.debugLine("entry/src/main/ets/pages/Index.ets(28:17)");
            Row.height(30);
            Row.width('100%');
        }, Row);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Image.create({ "id": 16777226, "type": 20000, params: [], "bundleName": "com.VIP_image.myapplication", "moduleName": "entry" });
            Image.debugLine("entry/src/main/ets/pages/Index.ets(29:21)");
            Image.width(20);
            Image.backgroundColor('#55b7f4');
            Image.borderRadius(10);
            Image.padding(3);
            Image.fillColor(Color.White);
            Image.margin({ left: 6, right: 6 });
        }, Image);
        this.observeComponentCreation2((elmtId, isInitialRender) => {
            Text.create('飞狗MOCO');
            Text.debugLine("entry/src/main/ets/pages/Index.ets(37:21)");
            Text.fontWeight(700);
        }, Text);
        Text.pop();
        Row.pop();
        Column.pop();
        Column.pop();
    }
    rerender() {
        this.updateDirtyElements();
    }
    static getEntryName(): string {
        return "Index";
    }
}
registerNamedRoute(() => new Index(undefined, {}), "", { bundleName: "com.VIP_image.myapplication", moduleName: "entry", pagePath: "pages/Index", pageFullPath: "entry/src/main/ets/pages/Index", integratedHsp: "false" });
