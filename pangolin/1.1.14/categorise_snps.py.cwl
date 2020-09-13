class: CommandLineTool
id: ../../../categorise_snps.py.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_metadata
  doc: ''
  type: string
  inputBinding:
    prefix: --metadata
- id: in_snps
  doc: ''
  type: string
  inputBinding:
    prefix: --snps
- id: in_representative_seqs_out
  doc: ''
  type: string
  inputBinding:
    prefix: --representative-seqs-out
- id: in_defining_snps_out
  doc: ''
  type: string
  inputBinding:
    prefix: --defining-snps-out
- id: in_mask_out
  doc: ''
  type: string
  inputBinding:
    prefix: --mask-out
- id: in_defining_cut_off
  doc: ''
  type: string
  inputBinding:
    prefix: --defining-cut-off
- id: in_represent_cut_off
  doc: ''
  type: string
  inputBinding:
    prefix: --represent-cut-off
- id: in_num_tax_a
  doc: ''
  type: long
  inputBinding:
    prefix: --num-taxa
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- categorise_snps.py
