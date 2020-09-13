class: CommandLineTool
id: ../../../halTreeMutations.py.cwl
inputs:
- id: in_bed_name
  doc: "Name function for output bed files where sequence name\nis specifed as %s\
    \ (default: %%s.bed)"
  type: string
  inputBinding:
    prefix: --bedName
- id: in_root
  doc: 'root (default: None)'
  type: string
  inputBinding:
    prefix: --root
- id: in_do_snps
  doc: ''
  type: boolean
  inputBinding:
    prefix: --doSnps
- id: in_do_parent_deletions
  doc: ''
  type: boolean
  inputBinding:
    prefix: --doParentDeletions
- id: in_max_gap
  doc: 'gap threshold (default: 10)'
  type: long
  inputBinding:
    prefix: --maxGap
- id: in_no_sort
  doc: ''
  type: boolean
  inputBinding:
    prefix: --noSort
- id: in_hal
  doc: input hal
  type: string
  inputBinding:
    position: 0
- id: in_outdir
  doc: output dir
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halTreeMutations.py
