import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle{
    id:checkBtn
    property bool checked: false
    property ExclusiveGroup exclusiveGroup: null
    property alias  colors: checkBtn.color
    property alias  text: checkText.text

    color: "black"
    border.color: "gray"
    border.width: 2
    width: 150
    height: 40
    radius: 30




    MouseArea{
        anchors.fill: parent

        onPressed: {
            checkBtn.border.color = "AliceBlue"
            checked = true
        }

        onReleased: {
            checkBtn.border.color = "gray"
        }
    }

    Text {
        id:checkText
        color: "white"
        text: qsTr("text")
        anchors.centerIn: parent
        font.pixelSize: 18
    }

    onExclusiveGroupChanged: {
           if (exclusiveGroup) {
               exclusiveGroup.bindCheckable(checkBtn)
           }
       }
    onCheckedChanged: {
          checked ? checkBtn.color = "red" : checkBtn.color = "black"
    }
}
