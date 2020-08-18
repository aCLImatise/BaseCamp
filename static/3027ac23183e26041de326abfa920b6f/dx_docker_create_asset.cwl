class: CommandLineTool
id: ../../../dx_docker_create_asset.cwl
inputs:
- id: output_path
  doc: Project ID and path in project to upload image to (defaults to project root)
  type: string
  inputBinding:
    prefix: --output_path
- id: alternative_export
  doc: "EXPERT ONLY: Use alternative method to export Docker image since Docker CLI\
    \ export sometimes doesn't create the root filesystem properly."
  type: boolean
  inputBinding:
    prefix: --alternative_export
- id: ubuntu_version
  doc: Ubuntu version
  type: string
  inputBinding:
    prefix: --ubuntu_version
- id: asset_version
  doc: Asset version
  type: string
  inputBinding:
    prefix: --asset_version
- id: image
  doc: image name
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-docker
- create-asset
