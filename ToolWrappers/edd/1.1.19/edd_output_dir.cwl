class: CommandLineTool
id: edd_output_dir.cwl
inputs:
- id: in_fdr
  doc: ''
  type: string
  inputBinding:
    prefix: --fdr
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_n
  doc: ''
  type: long
  inputBinding:
    prefix: -n
- id: in_bin_size
  doc: ''
  type: long
  inputBinding:
    prefix: --bin-size
- id: in_edd
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- edd
- output_dir
