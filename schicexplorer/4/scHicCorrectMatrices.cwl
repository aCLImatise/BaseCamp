class: CommandLineTool
id: scHicCorrectMatrices.cwl
inputs:
- id: matrix
  doc: 'Matrix to reduce in h5 format. (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: out_filename
  doc: 'File name to save the resulting matrix, please add the scool prefix. (default:
    None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: threads
  doc: 'Number of threads. Using the python multiprocessing module. (default: 4)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- scHicCorrectMatrices
