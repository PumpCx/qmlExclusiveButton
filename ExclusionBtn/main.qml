import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column{
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter

        ExclusiveGroup{
            id:btnGroup
        }

        CustomBtn{
            text: qsTr("选项一")
            exclusiveGroup: btnGroup
        }

        CustomBtn{
            text: qsTr("选项二")
            exclusiveGroup: btnGroup
        }

        CustomBtn{
            text: qsTr("选项三")
            exclusiveGroup: btnGroup
        }
    }
}
