import QtQuick 2.15
import QtMultimedia
import QtQuick.Controls
import QtQuick.Window
import QtQml


Window
{
 id: base
 title: qsTr("Spider man")
 width: 640
 height: 480
 visible: true


 Grid
 {
     width: 620
     height: 480
     anchors.horizontalCenter: parent.horizontalCenter
     anchors.verticalCenter: parent.verticalCenter

     Frame
     {
         id: myFrame
         width: 620
         height: 400
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.verticalCenter: parent.verticalCenter
         BorderImage {
             id: video
             source: "back.jpeg"
             width: 620;
             height: 400
             border.left: 5; border.top: 5
             border.right: 5; border.bottom: 5
         }
         anchors.verticalCenterOffset: -10
     }



         ProgressBar {
         id: progressBar
         value: 0.020
         width: 620
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.verticalCenter: parent.verticalCenter
         anchors.verticalCenterOffset: 200
         }

         Grid
         {
             id: buttons
             width: 420
             anchors.centerIn: parent.Center
             anchors.horizontalCenter: parent.horizontalCenter
             anchors.verticalCenter: parent.verticalCenter
             anchors.verticalCenterOffset: 220
             rows: 1; columns: 5;

             Button
             {
                 id: play
                text: "▶️"
             }

             Button
             {
                 id: pause
                text: "⏸️"
             }

             Button
             {
                 id: stop
                text: "⏹"
             }

             Button
             {
                 id: rewind
                text: "⏪️"
             }

             Button
             {
                 id: forward
                text: "⏩️"
             }



         }


 }

}




