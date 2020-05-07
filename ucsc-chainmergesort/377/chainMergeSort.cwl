class: CommandLineTool
id: chainMergeSort.cwl
inputs:
- id: save_id
  doc: existing chain ids.
  type: string
  inputBinding:
    prefix: -saveId
- id: input_list
  doc: list of input chain files.
  type: string
  inputBinding:
    prefix: -inputList
- id: tempdir
  doc: / - somedir has space for temporary sorting data, default ./
  type: string
  inputBinding:
    prefix: -tempDir
outputs: []
cwlVersion: v1.1
baseCommand:
- chainMergeSort
