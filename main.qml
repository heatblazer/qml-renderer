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
        id: scene3d
        anchors.fill: parent
        anchors.margins: 10
        focus: true
        aspects: ["input", "logic"]
        cameraAspectRatioMode: Scene3D.AutomaticAspectRatio
        SocketScene
        {
            id: socketScene
            MouseArea {
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton | Qt.MidButton
                onClicked: function() { console.log("Clicked button!!!"); }
            }

        }


    }

    RowLayout
    {
        id: buttonsBox
        width: incX.width * 2
        height: incX.height * 4.5
        spacing: 0

        ColumnLayout {

            id: buttonLayout
            height: parent.height
            spacing: 0
            /*
            Layout.minimumHeight: exitButton.height * 3
            width: exitButton.width
            anchors.left: parent.left
            spacing: 0
              */
            NewPushButton
            {
                id: incX
                Layout.fillHeight: true
                Layout.minimumWidth: parent.width / 70
                text: "X"
                onClicked: function() {
                    socketScene.incX();
                }
            }

            NewPushButton
            {
                id: incY
                Layout.fillHeight: true
                Layout.minimumWidth: parent.width / 70

                text: "Y"
                onClicked: function() {
                    console.log("setting socket + 10");
                    socketScene.incY();
                }
            }

            NewPushButton
            {
                id: incZ
                Layout.fillHeight: true
                Layout.minimumWidth: parent.width / 70

                text: "Z"
                onClicked: function() {
                    socketScene.incZ();
                }
            }

        }
        ColumnLayout {

            id: buttonLayout2
            height: parent.height
            spacing: 0
            /*
            Layout.minimumHeight: exitButton.height * 4
            width: exitButton.width
            anchors.left: parent.left
            spacing: 0
              */
            NewPushButton
            {
                id: decX
                Layout.fillHeight: true
                Layout.minimumWidth: parent.width / 70

                text: "-X"
                onClicked: function() {
                    socketScene.decX();
                }
            }

            NewPushButton
            {
                id: decY
                Layout.fillHeight: true
                Layout.minimumWidth: parent.width / 70
                text: "-Y"
                onClicked: function() {
                    socketScene.decY();
                }
            }

            NewPushButton
            {
                id: decZ
                Layout.fillHeight: true
                Layout.minimumWidth: parent.width / 70
                text: "-Z"
                onClicked: function() {
                    socketScene.decZ();
                }
            }
        }
    }
}

