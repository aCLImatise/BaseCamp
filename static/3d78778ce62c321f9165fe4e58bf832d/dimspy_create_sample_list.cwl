class: CommandLineTool
id: dimspy_create_sample_list.cwl
inputs:
- id: input
  doc: HDF5 file that contains a peak matrix object from one of the processing steps.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Text file to write to.
  type: string
  inputBinding:
    prefix: --output
- id: delimiter
  doc: Values on each line of the file are separated by this character.
  type: string
  inputBinding:
    prefix: --delimiter
outputs: []
cwlVersion: v1.1
baseCommand:
- dimspy
- create-sample-list
