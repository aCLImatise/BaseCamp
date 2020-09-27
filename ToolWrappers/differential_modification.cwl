class: CommandLineTool
id: differential_modification.cwl
inputs:
- id: in_bed
  doc: Bed file to aggregate modifications on.
  type: File
  inputBinding:
    prefix: --bed
- id: in_a_group
  doc: Frequencies of group A.
  type: string[]
  inputBinding:
    prefix: --Agroup
- id: in_b_group
  doc: Frequencies of group B.
  type: string[]
  inputBinding:
    prefix: --Bgroup
- id: in_cut_off
  doc: 'FDR cutoff. Default: 0.05'
  type: double
  inputBinding:
    prefix: --cutoff
- id: in_out
  doc: 'File to write results to. Default: stdout.'
  type: File
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- differential_modification
