class: CommandLineTool
id: msbenchmark.cwl
inputs:
- id: in_var_0
  doc: ''
  type: string?
  inputBinding:
    prefix: --filter
- id: in_spectra_vertical_line_chromatograms_vertical_line_ramp_adapter_vertical_line_ramp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_binary_vertical_lineno_binary
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_options
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_another
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- msbenchmark
