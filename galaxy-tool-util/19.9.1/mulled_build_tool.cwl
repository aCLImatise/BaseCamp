class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mulled_build_tool.cwl
inputs:
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
- id: invo_lucro_path
  doc: ''
  type: string
  inputBinding:
    prefix: --involucro-path
- id: dry_run
  doc: ''
  type: boolean
  inputBinding:
    prefix: --dry-run
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mulled-build-tool
