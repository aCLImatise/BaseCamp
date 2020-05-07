class: CommandLineTool
id: mulled_build_tool.cwl
inputs:
- id: command
  doc: Command (build-and-test, build, all)
  type: string
  inputBinding:
    position: 0
- id: tool
  doc: Path to tool to build mulled image for.
  type: string
  inputBinding:
    position: 1
- id: name_override
  doc: Override mulled image name - this is not recommended since metadata will not
    be detectable from the name of resulting images
  type: string
  inputBinding:
    prefix: --name-override
- id: image_build
  doc: Build a versioned variant of this image.
  type: string
  inputBinding:
    prefix: --image-build
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-build-tool
