import QtQuick
import QtMultimedia

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    SoundEffect {
        id: playMusic
        source: Qt.resolvedUrl("qrc:/qmlsoundeffect/click.wav")
    }
    MouseArea {
        anchors.fill: parent
        onPressed:  {
            console.log("play");
            playMusic.play() }
    }
}
