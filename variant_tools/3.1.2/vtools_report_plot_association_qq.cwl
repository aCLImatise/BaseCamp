class: CommandLineTool
id: vtools_report_plot_association_qq.cwl
inputs:
- id: shape
  doc: Choose a shape theme (integer 1 to 16) for dots on QQ plot. Default set to
    1.
  type: long
  inputBinding:
    prefix: --shape
- id: fixed_shape
  doc: Use the same dot-shape theme for all plots
  type: boolean
  inputBinding:
    prefix: --fixed_shape
- id: no_slope
  doc: Do not plot the diagonal line
  type: boolean
  inputBinding:
    prefix: --no_slope
- id: title
  doc: Title of plot.
  type: string
  inputBinding:
    prefix: --title
- id: color
  doc: "Choose a color theme from the list above to apply to the plot. (via the 'RColorBrewer'\
    \ package: cran.r-project.org/web/packages/RColorBrewer)"
  type: string
  inputBinding:
    prefix: --color
- id: width_height
  doc: INCHES, --width-height INCHES INCHES The width and height of the graphics region
    in inches
  type: string
  inputBinding:
    prefix: --width_height
- id: same_page
  doc: Plot multiple groups of p-values on the same graph
  type: boolean
  inputBinding:
    prefix: --same_page
- id: output
  doc: Specify output graph filename. Output is in pdf format. It can be converted
    to jpg format via the 'convert' command in Linux (e.g., convert -density 180 p.pdf
    p.jpg)
  type: File
  inputBinding:
    prefix: --output
- id: bonferroni
  doc: Plot the horizontal line at 0.05/N on Y-axis (significance level after Bonferroni
    correction)
  type: boolean
  inputBinding:
    prefix: --bonferroni
- id: h_lines
  doc: Additional horizontal line(s) to be drawn on the Y-axis.
  type: string[]
  inputBinding:
    prefix: --hlines
- id: label_top
  doc: Specify how many top hits (smallest p-values by rank) you want to highlight
    with their identifiers in text.
  type: long
  inputBinding:
    prefix: --label_top
- id: label_these
  doc: Specify the names of variants (chr:pos, e.g., 1:87463) or genes (genename,
    e.g., IKBKB) you want to highlight with their identifiers in text.
  type: string[]
  inputBinding:
    prefix: --label_these
- id: font_size
  doc: Font size of text labels. Default set to '2.5'.
  type: long
  inputBinding:
    prefix: --font_size
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_association
- qq
