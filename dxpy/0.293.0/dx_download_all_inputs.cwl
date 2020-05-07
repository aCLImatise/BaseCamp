class: CommandLineTool
id: dx_download_all_inputs.cwl
inputs:
- id: except
  doc: Do not download the input with this name. (May be used multiple times.)
  type: string
  inputBinding:
    prefix: --except
- id: parallel
  doc: Download the files in parallel
  type: boolean
  inputBinding:
    prefix: --parallel
- id: sequential
  doc: Download the files sequentially
  type: boolean
  inputBinding:
    prefix: --sequential
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-download-all-inputs
