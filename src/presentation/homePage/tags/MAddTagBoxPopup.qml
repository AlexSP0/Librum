import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Librum.style
import CustomComponents


Popup
{
    id: root
    property string currentlySelectedData
    signal itemSelected()
    
    onOpened: listView.currentIndex = -1
    
    implicitWidth: 200
    padding: 8
    focus: true
    closePolicy: Popup.CloseOnPressOutsideParent
    background: Rectangle
    {
        color: Style.colorBackground
        border.width: 1
        border.color: Style.colorLightBorder
        radius: 4
        antialiasing: true
    }
    
    
    ColumnLayout
    {
        id: mainLayout
        width: parent.width
        
        
        ListView
        {
            id: listView            
            Layout.fillWidth: true
            Layout.preferredHeight: contentHeight
            Layout.maximumHeight: 208
            maximumFlickVelocity: 550
            keyNavigationEnabled: true
            currentIndex: -1
            clip: true
            focus: true
            boundsBehavior: Flickable.StopAtBounds
            ScrollBar.vertical: ScrollBar { }
            
            model: ListModel
            {
                ListElement { text: "Technology" }
                ListElement { text: "Favourite" }
                ListElement { text: "Romance" }
                ListElement { text: "Comedy" }
                ListElement { text: "Sports" }
                ListElement { text: "Physics" }
                ListElement { text: "Blockchain" }
                ListElement { text: "Psychology" }
            }
            
            delegate: MBaseListItem
            {
                width: listView.width
                height: 32
                containingListview: listView
                fontSize: 11.5
                fontColor: Style.colorLightText3
                checkBoxStyle: false
                
                onClicked: (index) => listView.selectItem(index)
            }
            
            
            Keys.onReturnPressed:
            {
                if(listView.currentIndex !== -1)
                    selectItem(listView.currentIndex);
            }
            
            
            function selectItem(index)
            {
                let newSelected = listView.itemAtIndex(index);
                
                root.currentlySelectedData = newSelected.text;
                root.itemSelected();
                root.close();
            }
        }
    }
}