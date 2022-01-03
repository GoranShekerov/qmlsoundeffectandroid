import QtQuick
import QtMultimedia

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MediaPlayer {
        id: playMusic
        source: Qt.resolvedUrl("qrc:/qmlsoundeffect/click.wav")
        audioOutput: AudioOutput {}
    }
    MouseArea {
        anchors.fill: parent
        onPressed:  {
            console.log("play");
            playMusic.play() }
    }
}
