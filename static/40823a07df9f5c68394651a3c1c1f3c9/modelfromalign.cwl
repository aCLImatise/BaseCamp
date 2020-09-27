class: CommandLineTool
id: modelfromalign.cwl
inputs:
- id: in_align_file
  doc: ': Aligned sequences to read. Required.'
  type: File
  inputBinding:
    prefix: -alignfile
- id: in_prior_library
  doc: ': Dirichlet mixture to use.'
  type: File
  inputBinding:
    prefix: -priorlibrary
- id: in_alignment_weights
  doc: ': Sequence weight file.'
  type: File
  inputBinding:
    prefix: -alignment_weights
- id: in_option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: in_run_name
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
- modelfromalign
