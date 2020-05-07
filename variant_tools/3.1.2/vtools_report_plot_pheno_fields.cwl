class: CommandLineTool
id: vtools_report_plot_pheno_fields.cwl
inputs:
- id: fields
  doc: A list of fields that will be outputted.
  type: string
  inputBinding:
    position: 0
- id: samples
  doc: '[SAMPLES [SAMPLES ...]] Conditions based on which samples are selected. Default
    to all samples.'
  type: boolean
  inputBinding:
    prefix: --samples
- id: save_data
  doc: Save data to file.
  type: File
  inputBinding:
    prefix: --save_data
- id: save_script
  doc: Save R script to file.
  type: File
  inputBinding:
    prefix: --save_script
- id: width
  doc: Width of plot. Default to 800.
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Height of plot. Default to 600.
  type: string
  inputBinding:
    prefix: --height
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: hist
  doc: File name of the outputted figure, which can have type PDF, EPS, or JPG. Multiple
    files might be produced if more than one figure is produced (e.g. MyFig_$FIELD1.pdf,
    MyFig_$FILED2.pdf if MyFig.pdf is specified)
  type: string
  inputBinding:
    prefix: --hist
- id: norm_curve
  doc: Add a normal distribution N(mean, stdev) density curve to the histogram.
  type: boolean
  inputBinding:
    prefix: --norm_curve
- id: dot
  doc: File name of the outputted figure, which can have type PDF, EPS, or JPG.
  type: string
  inputBinding:
    prefix: --dot
- id: dot_size
  doc: Size of dots. Default is 2.0
  type: string
  inputBinding:
    prefix: --dot_size
- id: discrete_color
  doc: If specified, the third field of input will be treated as "factor" data.
  type: string
  inputBinding:
    prefix: --discrete_color
- id: box
  doc: File name of the outputted figure, which can have type PDF, EPS, or JPG.
  type: string
  inputBinding:
    prefix: --box
- id: stratify
  doc: Cutoff values to stratify data in the input field for box plot. When this option
    is on, only one input field is allowed.
  type: string[]
  inputBinding:
    prefix: --stratify
- id: outlier_size
  doc: Size of outlier dots. Default is 2.0
  type: string
  inputBinding:
    prefix: --outlier_size
- id: color
  doc: Color theme for boxes.
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_pheno_fields
