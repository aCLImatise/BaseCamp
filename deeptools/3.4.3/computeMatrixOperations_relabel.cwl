class: CommandLineTool
id: computeMatrixOperations_relabel.cwl
inputs:
- id: matrix_file
  doc: 'Matrix file from the computeMatrix tool. (default: None)'
  type: string
  inputBinding:
    prefix: --matrixFile
- id: out_filename
  doc: 'Output file name (default: None)'
  type: string
  inputBinding:
    prefix: --outFileName
- id: group_labels
  doc: 'Groups labels. If none are specified then the current labels will be kept.
    (default: None)'
  type: string[]
  inputBinding:
    prefix: --groupLabels
- id: sample_labels
  doc: 'Sample labels. If none are specified then the current labels will be kept.
    (default: None)'
  type: string[]
  inputBinding:
    prefix: --sampleLabels
outputs: []
cwlVersion: v1.1
baseCommand:
- computeMatrixOperations
- relabel
