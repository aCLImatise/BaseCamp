class: CommandLineTool
id: riboraptor_plot_metagene.cwl
inputs:
- id: in_counts
  doc: Path to counts file (if not stdin)
  type: File
  inputBinding:
    prefix: --counts
- id: in_title
  doc: Plot Title
  type: string
  inputBinding:
    prefix: --title
- id: in_marker
  doc: '[o|x]    Marker (o/x) for plots'
  type: boolean
  inputBinding:
    prefix: --marker
- id: in_color
  doc: Color
  type: string
  inputBinding:
    prefix: --color
- id: in_milli_fy_labels
  doc: Convert labels on Y-axis to concise form?
  type: boolean
  inputBinding:
    prefix: --millify_labels
- id: in_identify_peak
  doc: Identify Peak?
  type: boolean
  inputBinding:
    prefix: --identify_peak
- id: in_positions
  doc: Range of positions to plot
  type: string
  inputBinding:
    prefix: --positions
- id: in_save_to
  doc: Path to file (png/pdf) to save to
  type: File
  inputBinding:
    prefix: --saveto
- id: in_ylabel
  doc: Y axix label
  type: string
  inputBinding:
    prefix: --ylabel
- id: in_ascii
  doc: Do not plot ascii
  type: boolean
  inputBinding:
    prefix: --ascii
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- riboraptor
- plot-metagene
