class: CommandLineTool
id: report_results.py.cwl
inputs:
- id: in_pangolin_output
  doc: pangolin output
  type: string?
  inputBinding:
    prefix: -p
- id: in_background_data_csv
  doc: background data csv
  type: string?
  inputBinding:
    prefix: -b
- id: in_output
  doc: output
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pangolin:2.3.5--py_0
cwlVersion: v1.1
baseCommand:
- report_results.py
