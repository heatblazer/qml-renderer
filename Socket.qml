import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity
{
    id: root

    property real x: 0
    property real y: 0
    property real z: 0
    property real scale: 1.0

    RenderableEntity
    {
        id: socket
        source: "assets/socket.obj"
        position: Qt.vector3d(root.x, root.y, root.z)
        scale: 0.03 * root.scale

        material: DiffuseMapMaterial {
            id: material
            diffuse: "assets/diffuse.webp"
            specular: Qt.rgba( 0.2, 0.2, 0.2, 1.0 )
            shininess: 2.0
        }
    }
}
