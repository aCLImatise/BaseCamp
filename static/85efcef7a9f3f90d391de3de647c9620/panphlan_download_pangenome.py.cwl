class: CommandLineTool
id: panphlan_download_pangenome.py.cwl
inputs:
- id: in_output
  doc: output location
  type: string?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Show progress information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_retry
  doc: Number of retry in pangenome download. Default is 5
  type: long?
  inputBinding:
    prefix: --retry
- id: in_wait
  doc: "Number of second spend waiting between download\nretries. Default 60"
  type: long?
  inputBinding:
    prefix: --wait
- id: in_input_name
  doc: "Name of species to download\n"
  type: string?
  inputBinding:
    prefix: --input_name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panphlan:3.1--py_0
cwlVersion: v1.1
baseCommand:
- panphlan_download_pangenome.py
