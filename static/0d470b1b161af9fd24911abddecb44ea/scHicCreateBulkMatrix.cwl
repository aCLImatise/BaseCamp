class: CommandLineTool
id: ../../../scHicCreateBulkMatrix.cwl
inputs:
- id: schic_matrix_m
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to cluster. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicCreateBulkMatrix
