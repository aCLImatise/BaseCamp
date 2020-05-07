class: CommandLineTool
id: learn_qmodel.cwl
inputs:
- id: output
  doc: 'Output file name/path. Default: custom.qmodel'
  type: string
  inputBinding:
    prefix: --output
- id: visualize
  doc: Visualize the accumulating profile. And create a pdf version of the plot. Only
    works for read file with more than 10000 reads.
  type: boolean
  inputBinding:
    prefix: --visualize
- id: plot
  doc: Plot the quality distributions as pdf. (Like visualize, but without the progress
    updates. Only plots the final distributions.)
  type: boolean
  inputBinding:
    prefix: --plot
- id: show
  doc: Read and plot a .qmodel.npz file.
  type: string
  inputBinding:
    prefix: --show
- id: length
  doc: 'Maximum read length. All values after this position will be truncated and
    not become part of the model. Default: 100'
  type: long
  inputBinding:
    prefix: --length
outputs: []
cwlVersion: v1.1
baseCommand:
- learn_qmodel
