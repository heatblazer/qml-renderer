import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.0

Item
{
    id: newpushbutton
    property alias text: buttonText.text
    signal clicked

    implicitWidth: buttonText.implicitWidth + 5
    implicitHeight: buttonText.implicitHeight + 5

    Button
    {
        id: buttonText
        width: parent.width
        height: parent.width

        style: ButtonStyle
        {
            label: Component
            {
                Text
                {
                    text: buttonText.text
                    clip: true
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                }
            }
        }
        onClicked: newpushbutton.clicked()
    }
}
