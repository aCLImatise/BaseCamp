class: CommandLineTool
id: pyqi_make_release.cwl
inputs:
- id: in_real_run
  doc: 'Perform a real run [default: False]'
  type: boolean
  inputBinding:
    prefix: --real-run
- id: in_package_name
  doc: "The name of the package to release [REQUIRED]\n"
  type: string
  inputBinding:
    prefix: --package-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyqi
- make-release
