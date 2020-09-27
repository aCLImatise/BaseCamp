class: CommandLineTool
id: learn_qmodel.cwl
inputs:
- id: in_p_five
  doc: Path to a forward (p5) read file.
  type: File[]
  inputBinding:
    prefix: --p5
- id: in_p_seven
  doc: Path to a reverse (p7) read file.
  type: File[]
  inputBinding:
    prefix: --p7
- id: in_output
  doc: 'Output file name/path. Default: custom.qmodel'
  type: File
  inputBinding:
    prefix: --output
- id: in_visualize
  doc: "Visualize the accumulating profile. And create a pdf\nversion of the plot.\
    \ Only works for read file with\nmore than 10000 reads."
  type: boolean
  inputBinding:
    prefix: --visualize
- id: in_plot
  doc: "Plot the quality distributions as pdf. (Like\nvisualize, but without the progress\
    \ updates. Only\nplots the final distributions.)"
  type: boolean
  inputBinding:
    prefix: --plot
- id: in_show
  doc: Read and plot a .qmodel.npz file.
  type: File
  inputBinding:
    prefix: --show
- id: in_length
  doc: "Maximum read length. All values after this position\nwill be truncated and\
    \ not become part of the model.\nDefault: 100\n"
  type: long
  inputBinding:
    prefix: --length
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'Output file name/path. Default: custom.qmodel'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- learn_qmodel
