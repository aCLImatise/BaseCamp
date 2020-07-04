class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scHicInfo.cwl
inputs:
- id: schic_matrix_m
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to investigate for QC. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicInfo
