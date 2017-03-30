import Qt3D.Core 2.0
import Qt3D.Render 2.0

TechniqueFilter
{
    id: root
    objectName: "techniqueFilter"

    property alias camera: cameraSelector.camera
    property alias window: surfaceSelector.surface

    matchAll: [
        FilterKey
        {
            name: "renderingStyle"
            value: "forward"
        }
    ]

    RenderSurfaceSelector
    {
        id: surfaceSelector

        Viewport
        {
            id: viewport
            objectName: "viewport"

            normalizedRect: Qt.rect(0.0, 0.0, 1.0, 1.0)

            CameraSelector
            {
                id: cameraSelector
                objectName: "cameraSelector"

                ClearBuffers
                {
                    buffers: ClearBuffers.ColorDepthBuffer
                    clearColor: "red"

                    SortPolicy
                    {
                        sortTypes:
                        [
                            SortPolicy.StateChangeCost,
                            SortPolicy.Material
                        ]
                    }
                }
            }
        }
    }
}
