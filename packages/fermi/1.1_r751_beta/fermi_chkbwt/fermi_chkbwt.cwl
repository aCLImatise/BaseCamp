class: CommandLineTool
id: fermi_chkbwt.cwl
inputs:
- id: in_load_fmindex_memory
  doc: load the FM-index as a memory mapped file
  type: boolean
  inputBinding:
    prefix: -M
- id: in_check_rank
  doc: check rank
  type: boolean
  inputBinding:
    prefix: -r
- id: in_print_bwt_stdout
  doc: print the BWT to the stdout
  type: boolean
  inputBinding:
    prefix: -p
- id: in_idx_based_ot_bwt
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
- fermi
- chkbwt
