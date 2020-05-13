class: CommandLineTool
id: pyatac_bias_vplot.cwl
inputs:
- id: bed
  doc: Positions around which to generate VPlot
  type: string
  inputBinding:
    prefix: --bed
- id: sizes
  doc: Accepts sizes file from pyatac sizes command
  type: long
  inputBinding:
    prefix: --sizes
- id: bg
  doc: Accepts tabix indexed file
  type: string
  inputBinding:
    prefix: --bg
- id: fast_a
  doc: Accepts indexed fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: pwm
  doc: PWM descriptor file. Default is Human.PWM.txt included in package
  type: string
  inputBinding:
    prefix: --pwm
- id: cores
  doc: Number of cores to use
  type: long
  inputBinding:
    prefix: --cores
- id: weight
  doc: column in which weight information is included
  type: long
  inputBinding:
    prefix: --weight
- id: strand
  doc: column in which strand information is included
  type: long
  inputBinding:
    prefix: --strand
- id: no_plot
  doc: Don't plot output
  type: boolean
  inputBinding:
    prefix: --no_plot
- id: plot_extra
  doc: Make some extra plots
  type: boolean
  inputBinding:
    prefix: --plot_extra
outputs: []
cwlVersion: v1.1
baseCommand:
- pyatac
- bias_vplot
