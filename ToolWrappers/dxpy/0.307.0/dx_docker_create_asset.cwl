class: CommandLineTool
id: dx_docker_create_asset.cwl
inputs:
- id: in_output_path
  doc: "Project ID and path in project to upload image to\n(defaults to project root)"
  type: File?
  inputBinding:
    prefix: --output_path
- id: in_alternative_export
  doc: "EXPERT ONLY: Use alternative method to export Docker\nimage since Docker CLI\
    \ export sometimes doesn't create\nthe root filesystem properly."
  type: boolean?
  inputBinding:
    prefix: --alternative_export
- id: in_ubuntu_version
  doc: Ubuntu version
  type: string?
  inputBinding:
    prefix: --ubuntu_version
- id: in_asset_version
  doc: "Asset version\n"
  type: string?
  inputBinding:
    prefix: --asset_version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Project ID and path in project to upload image to\n(defaults to project root)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-docker
- create-asset
