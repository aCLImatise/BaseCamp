class: CommandLineTool
id: vtools_report_plot_fields.cwl
inputs:
- id: in_variants
  doc: "Limit value of fields to variant in specified variant\ntable. Default to all\
    \ variants."
  type: string
  inputBinding:
    prefix: --variants
- id: in_save_data
  doc: Save data to file.
  type: File
  inputBinding:
    prefix: --save_data
- id: in_save_script
  doc: Save R script to file.
  type: File
  inputBinding:
    prefix: --save_script
- id: in_width
  doc: Width of plot. Default to 800.
  type: long
  inputBinding:
    prefix: --width
- id: in_height
  doc: Height of plot. Default to 600.
  type: long
  inputBinding:
    prefix: --height
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_hist
  doc: "File name of the outputted figure, which can have type\nPDF, EPS, or JPG.\
    \ Multiple files might be produced if\nmore than one figure is produced (e.g.\n\
    MyFig_$FIELD1.pdf, MyFig_$FILED2.pdf if MyFig.pdf is\nspecified)"
  type: File
  inputBinding:
    prefix: --hist
- id: in_norm_curve
  doc: "Add a normal distribution N(mean, stdev) density curve\nto the histogram."
  type: boolean
  inputBinding:
    prefix: --norm_curve
- id: in_dot
  doc: "File name of the outputted figure, which can have type\nPDF, EPS, or JPG."
  type: File
  inputBinding:
    prefix: --dot
- id: in_dot_size
  doc: Size of dots. Default is 2.0
  type: long
  inputBinding:
    prefix: --dot_size
- id: in_discrete_color
  doc: "If specified, the third field of input will be treated\nas \"factor\" data."
  type: string
  inputBinding:
    prefix: --discrete_color
- id: in_box
  doc: "File name of the outputted figure, which can have type\nPDF, EPS, or JPG."
  type: File
  inputBinding:
    prefix: --box
- id: in_stratify
  doc: "Cutoff values to stratify data in the input field for\nbox plot. When this\
    \ option is on, only one input field\nis allowed."
  type: string[]
  inputBinding:
    prefix: --stratify
- id: in_outlier_size
  doc: Size of outlier dots. Default is 2.0
  type: long
  inputBinding:
    prefix: --outlier_size
- id: in_color
  doc: "Color theme for boxes.\n"
  type: string
  inputBinding:
    prefix: --color
- id: in_fields
  doc: A list of fields that will be outputted.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_fields
