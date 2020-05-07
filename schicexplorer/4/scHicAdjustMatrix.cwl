class: CommandLineTool
id: scHicAdjustMatrix.cwl
inputs:
- id: matrix
  doc: 'The matrix to adjust in the scool format. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name to save the adjusted matrix. (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: chromosomes
  doc: 'List of chromosomes to keep / remove (default: None)'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: create_submatrix
  doc: 'Keep only first n matrices and remove the rest. Good for test data creation.
    (default: None)'
  type: string
  inputBinding:
    prefix: --createSubmatrix
- id: action
  doc: 'Keep, remove or mask the list of specified chromosomes / regions (default:
    keep)'
  type: string
  inputBinding:
    prefix: --action
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicAdjustMatrix
