class: CommandLineTool
id: mb_naive_bsfinder_pileup_file.cwl
inputs:
- id: in_min_transitions
  doc: ''
  type: long
  inputBinding:
    prefix: --min_transitions
- id: in_mb_naive_bs_finder
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
- mb-naive-bsfinder
- pileup_file
