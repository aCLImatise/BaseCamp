class: CommandLineTool
id: ../../../samtools_faidx.cwl
inputs:
- id: in_fa_idx
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fast_a
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
- samtools
- faidx
