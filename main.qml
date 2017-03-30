import QtQuick 2.1
import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Input 2.0
import Qt3D.Extras 2.0

Entity
{
    id: root
    objectName: "root"
    components: [ RenderSettings {
            activeFrameGraph: SortedForwardRenderer {
                id: renderer
                camera: mainCamera
            }
        },
        InputSettings {}
    ]

    BasicCamera
    {
        id: mainCamera
        position: Qt.vector3d(0.0, 3.5, 25.0)
        viewCenter: Qt.vector3d(0.0, 3.5, 0.0)
    }

    FirstPersonCameraController
    {
        camera: mainCamera
    }

    /**
      Phong material
      */
    PhongMaterial
    {
        id: redAdsMaterial
        ambient: Qt.rgba(0.02, 0.02, 0.02, 1.0)
        diffuse: Qt.rgba(0.8, 0.0, 0.0, 1.0)
    }

    PlaneEntry
    {
        id: floor
        width: 100
        height: 100
        resolution: Qt.size(20, 20)
    }

    Socket
    {
        x: -8
    }
}
