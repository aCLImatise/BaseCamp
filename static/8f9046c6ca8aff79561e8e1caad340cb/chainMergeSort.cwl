class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chainMergeSort.cwl
inputs:
- id: save_id
  doc: '- keep the existing chain ids.'
  type: boolean
  inputBinding:
    prefix: -saveId
- id: input_list
  doc: '- somefile contains list of input chain files.'
  type: string
  inputBinding:
    prefix: -inputList
- id: tempdir
  doc: '- somedir has space for temporary sorting data, default ./'
  type: string
  inputBinding:
    prefix: -tempDir
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chainMergeSort
