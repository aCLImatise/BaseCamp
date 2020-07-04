class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scHicNormalize.cwl
inputs:
- id: schic_matrix_m
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to investigate for QC. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name of the consensus scool matrix. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: set_to_zero_threshold
  doc: 'Values smaller as this threshold are set to 0. (default: 1.0)'
  type: string
  inputBinding:
    prefix: --setToZeroThreshold
- id: sch_i_c
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_5
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicNormalize
