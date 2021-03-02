class: CommandLineTool
id: vtools_report_plot_association_qq.cwl
inputs:
- id: in_shape
  doc: "Choose a shape theme (integer 1 to 16) for dots on QQ\nplot. Default set to\
    \ 1."
  type: long?
  inputBinding:
    prefix: --shape
- id: in_fixed_shape
  doc: Use the same dot-shape theme for all plots
  type: boolean?
  inputBinding:
    prefix: --fixed_shape
- id: in_no_slope
  doc: Do not plot the diagonal line
  type: boolean?
  inputBinding:
    prefix: --no_slope
- id: in_title
  doc: Title of plot.
  type: string?
  inputBinding:
    prefix: --title
- id: in_color
  doc: "Choose a color theme from the list above to apply to\nthe plot. (via the 'RColorBrewer'\
    \ package:\ncran.r-project.org/web/packages/RColorBrewer)"
  type: string?
  inputBinding:
    prefix: --color
- id: in_width_height
  doc: "INCHES, --width-height INCHES INCHES\nThe width and height of the graphics\
    \ region in inches"
  type: string?
  inputBinding:
    prefix: --width_height
- id: in_same_page
  doc: Plot multiple groups of p-values on the same graph
  type: boolean?
  inputBinding:
    prefix: --same_page
- id: in_output
  doc: "Specify output graph filename. Output is in pdf\nformat. It can be converted\
    \ to jpg format via the\n'convert' command in Linux (e.g., convert -density 180\n\
    p.pdf p.jpg)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_bonferroni
  doc: "Plot the horizontal line at 0.05/N on Y-axis\n(significance level after Bonferroni\
    \ correction)"
  type: boolean?
  inputBinding:
    prefix: --bonferroni
- id: in_h_lines
  doc: "Additional horizontal line(s) to be drawn on the\nY-axis."
  type: string[]
  inputBinding:
    prefix: --hlines
- id: in_label_top
  doc: "Specify how many top hits (smallest p-values by rank)\nyou want to highlight\
    \ with their identifiers in text."
  type: long?
  inputBinding:
    prefix: --label_top
- id: in_label_these
  doc: "Specify the names of variants (chr:pos, e.g., 1:87463)\nor genes (genename,\
    \ e.g., IKBKB) you want to highlight\nwith their identifiers in text."
  type: string[]
  inputBinding:
    prefix: --label_these
- id: in_font_size
  doc: "Font size of text labels. Default set to '2.5'.\n"
  type: long?
  inputBinding:
    prefix: --font_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify output graph filename. Output is in pdf\nformat. It can be converted\
    \ to jpg format via the\n'convert' command in Linux (e.g., convert -density 180\n\
    p.pdf p.jpg)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_association
- qq
