import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 500
    height: 300
    visible: true
    title: qsTr("Homework 7 part 2")

    function getFriendsText(friends) {
        var resString = ""
        for (const friend of friends) {
            resString += friend + ", "
        }
        return resString.slice(0, -2);
    }

    SwipeView{
        currentIndex: 0
        anchors.fill: parent
        anchors.margins: 10

        Item{
            id: firstPage

            ListView {
                anchors.fill: parent
                model: mdl
                spacing: 2

                delegate: Row {
                    height: 50
                    width: parent.width
                    spacing: 2
                    Rectangle { //rowID
                        width: parent.width / 3
                        height: parent.height
                        border.width: 1
                        Text {
                            anchors.centerIn: parent
                            text: rowId
                        }
                    }
                    Rectangle { //name
                        width: parent.width / 3
                        height: parent.height
                        border.width: 1
                        Text {
                            anchors.centerIn: parent
                            text: name
                        }
                    }
                    Rectangle { //surname
                        width: parent.width / 3
                        height: parent.height
                        border.width: 1
                        Text {
                            anchors.centerIn: parent
                            text: surname
                        }
                    }
                }
                header: Row{
                    width: parent.width
                    height: 50
                    spacing: 2
                    Rectangle {
                        width: parent.width / 3
                        height: parent.height
                        border.width: 1
                        Text {
                            anchors.centerIn: parent
                            text: "rowId"
                        }
                    }

                    Rectangle {
                        width: parent.width / 3
                        height: parent.height
                        border.width: 1
                        Text {
                            anchors.centerIn: parent
                            text: "name"
                        }
                    }
                    Rectangle {
                        width: parent.width / 3
                        height: parent.height
                        border.width: 1
                        Text {
                            anchors.centerIn: parent
                            text: "surname"
                        }
                    }

                }
            }
        }
        Item{
            id: secondPage

            ListView{
                anchors.fill: parent
                model: mdl
                spacing: 2

                delegate:
                    Row{
                    width: parent.width
                    height: 50
                    spacing: 2

                    Rectangle{ //friends
                        anchors.fill: parent
                        border.width: 1
                        Text {
                            anchors.fill: parent
                            text: getFriendsText(friends)
                            wrapMode: Text.WordWrap
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                        }
                    }
                }
                header: Row{
                    width: parent.width
                    height: 50
                    spacing: 2
                    Rectangle {
                        width: parent.width
                        height: parent.height
                        border.width: 1
                        Text{
                            anchors.centerIn: parent
                            text: "friends"
                        }
                    }
                }
            }
        }
    }
}
