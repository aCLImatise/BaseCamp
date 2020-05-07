class: CommandLineTool
id: ppanini_rocplot.cwl
inputs:
- id: master_plot
  doc: plotting master figure of the paper
  type: boolean
  inputBinding:
    prefix: --master-plot
- id: plot_meta_genomics
  doc: plotting based of metagenomics priority score
  type: boolean
  inputBinding:
    prefix: --plot-metagenomics
- id: plot_genomics
  doc: plotting based of genomics priority score
  type: boolean
  inputBinding:
    prefix: --plot-genomics
- id: path
  doc: path for inputs and/or outputs
  type: File
  inputBinding:
    prefix: --path
- id: outfile
  doc: output file
  type: string
  inputBinding:
    prefix: --outfile
- id: beta
  doc: beta is a weight of contribution, B * prevelence and (1-B) * abundance
  type: string
  inputBinding:
    prefix: --beta
- id: size
  doc: size of the plot in inches
  type: long
  inputBinding:
    prefix: --size
- id: output
  doc: a name or output file
  type: string
  inputBinding:
    prefix: --output
- id: niche
  doc: niche name
  type: string
  inputBinding:
    prefix: --niche
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanini_rocplot
