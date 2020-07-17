class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_chkbwt.cwl
inputs:
- id: load_fmindex_memory
  doc: load the FM-index as a memory mapped file
  type: boolean
  inputBinding:
    prefix: -M
- id: check_rank
  doc: check rank
  type: boolean
  inputBinding:
    prefix: -r
- id: print_bwt_stdout
  doc: print the BWT to the stdout
  type: boolean
  inputBinding:
    prefix: -p
- id: idx_based_ot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- chkbwt
