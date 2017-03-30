import QtQuick 2.0
import QtQuick.Scene3D 2.0
import QtQuick.Layouts 1.0
import "."

Item
{
    id: mainView
    width: 1280
    height: 768
    visible: true

    Scene3D {
        anchors.fill: parent
        focus: true
        SocketScene { id: socketScene }
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MidButton
        onClicked: function() { console.log("Clicked button!!!"); }
    }

    RowLayout
    {
        id: buttonLayout
        Layout.minimumHeight: exitButton.height
        width: exitButton.width * 3
        anchors.left: parent.left
        spacing: 0

        NewPushButton
        {
            id: exitButton
            Layout.fillHeight: true
            Layout.minimumWidth: parent.width / 70
            text: "Quit"
            onClicked: function() {
                console.log("QUIT QUIT QUIT!!!");
                Qt.quit(0);
            }
        }

        NewPushButton
        {
            id: testButton1
            Layout.fillHeight: true
            Layout.minimumWidth: parent.width / 70
            text: "Test1"
            onClicked: function() {
                console.log("QUIT QUIT QUIT!!!");
                Qt.quit(0);
            }
        }

        NewPushButton
        {
            id: testButton2
            Layout.fillHeight: true
            Layout.minimumWidth: parent.width / 70
            text: "Test2"
            onClicked: function() {
                console.log("QUIT QUIT QUIT!!!");
                Qt.quit(0);
            }
        }
    }
}

