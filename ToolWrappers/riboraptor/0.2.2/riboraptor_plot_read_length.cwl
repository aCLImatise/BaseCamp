class: CommandLineTool
id: riboraptor_plot_read_length.cwl
inputs:
- id: in_read_lengths
  doc: Path to read length pickle file
  type: long?
  inputBinding:
    prefix: --read-lengths
- id: in_title
  doc: Plot Title
  type: string?
  inputBinding:
    prefix: --title
- id: in_milli_fy_labels
  doc: Convert labels on Y-axis to concise form?
  type: boolean?
  inputBinding:
    prefix: --millify_labels
- id: in_save_to
  doc: Path to file (png/pdf) to save to
  type: File?
  inputBinding:
    prefix: --saveto
- id: in_ascii
  doc: Do not plot ascii
  type: boolean?
  inputBinding:
    prefix: --ascii
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- riboraptor
- plot-read-length
