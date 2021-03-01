class: CommandLineTool
id: dx_download_all_inputs.cwl
inputs:
- id: in_except
  doc: "Do not download the input with this name. (May be used\nmultiple times.)"
  type: string?
  inputBinding:
    prefix: --except
- id: in_parallel
  doc: Download the files in parallel
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_sequential
  doc: Download the files sequentially
  type: boolean?
  inputBinding:
    prefix: --sequential
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-download-all-inputs
