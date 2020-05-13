class: CommandLineTool
id: pyqi_make_release.cwl
inputs:
- id: package_name
  doc: The name of the package to release [REQUIRED]
  type: string
  inputBinding:
    prefix: --package-name
outputs: []
cwlVersion: v1.1
baseCommand:
- pyqi
- make-release
