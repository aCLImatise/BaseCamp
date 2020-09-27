class: CommandLineTool
id: cooler_show.cwl
inputs:
- id: in_range_two
  doc: "The coordinates of a genomic region shown\nalong the column dimension. If\
    \ omitted, the\ncolumn range is the same as the row range.\nUse to display asymmetric\
    \ matrices or trans\ninteractions."
  type: long
  inputBinding:
    prefix: --range2
- id: in_balanced
  doc: "Show the balanced contact matrix. If not\nprovided, display the unbalanced\
    \ counts."
  type: boolean
  inputBinding:
    prefix: --balanced
- id: in_out
  doc: "Save the image of the contact matrix to a\nfile. If not specified, the matrix\
    \ is\ndisplayed in an interactive window. The\nfigure format is deduced from the\
    \ extension\nof the file, the supported formats are png,\njpg, svg, pdf, ps and\
    \ eps."
  type: File
  inputBinding:
    prefix: --out
- id: in_dpi
  doc: The DPI of the figure, if saving to a file
  type: long
  inputBinding:
    prefix: --dpi
- id: in_scale
  doc: "[linear|log2|log10]\nScale transformation of the colormap:\nlinear, log2 or\
    \ log10. Default is log10."
  type: boolean
  inputBinding:
    prefix: --scale
- id: in_force
  doc: "Force display very large matrices (>=10^8\npixels). Use at your own risk as\
    \ it may\ncause performance issues."
  type: boolean
  inputBinding:
    prefix: --force
- id: in_zmin
  doc: "The minimal value of the color scale. Units\nmust match those of the colormap\
    \ scale. To\nprovide a negative value use a equal sign\nand quotes, e.g. -zmin='-0.5'"
  type: double
  inputBinding:
    prefix: --zmin
- id: in_zmax
  doc: "The maximal value of the color scale. Units\nmust match those of the colormap\
    \ scale. To\nprovide a negative value use a equal sign\nand quotes, e.g. -zmax='-0.5'"
  type: double
  inputBinding:
    prefix: --zmax
- id: in_cmap
  doc: "The colormap used to display the contact\nmatrix. See the full list at http://matplotl\n\
    ib.org/examples/color/colormaps_reference.ht\nml"
  type: string
  inputBinding:
    prefix: --cmap
- id: in_field
  doc: 'Pixel values to display.  [default: count]'
  type: string
  inputBinding:
    prefix: --field
- id: in_cool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_range
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
- show
