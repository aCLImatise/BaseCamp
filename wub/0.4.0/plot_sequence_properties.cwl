class: CommandLineTool
id: plot_sequence_properties.py.cwl
inputs:
- id: input_fast_x
  doc: 'Input (default: stdin).'
  type: string
  inputBinding:
    position: 0
- id: f
  doc: Input format (fastq).
  type: string
  inputBinding:
    prefix: -f
- id: b
  doc: Number of bins on histograms (50).
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: Report pdf (plot_sequence_properties.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: j
  doc: Produce joint plot of lengths and mean quality values (False).
  type: boolean
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_sequence_properties.py
