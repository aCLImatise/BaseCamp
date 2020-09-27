class: CommandLineTool
id: fq2fa.cwl
inputs:
- id: in_paired
  doc: if the reads are paired-end in one file
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_merge
  doc: if the reads are paired-end in two files
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_filter
  doc: filter out reads containing 'N'
  type: boolean
  inputBinding:
    prefix: --filter
- id: in_tmp_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fq2fa
