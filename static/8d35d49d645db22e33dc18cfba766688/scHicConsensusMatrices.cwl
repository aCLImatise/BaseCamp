class: CommandLineTool
id: ../../../scHicConsensusMatrices.cwl
inputs:
- id: schic_matrix_m
  doc: 'scHi-C matrix, -m scool scHi-C matrix The single cell Hi-C interaction matrices
    to investigate for QC. Needs to be in scool format (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: clusters
  doc: 'file, -c cluster file Text file which contains per matrix the associated cluster.
    (default: None)'
  type: string
  inputBinding:
    prefix: --clusters
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
- scHicConsensusMatrices
