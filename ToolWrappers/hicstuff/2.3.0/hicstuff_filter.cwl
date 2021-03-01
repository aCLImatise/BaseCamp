class: CommandLineTool
id: hicstuff_filter.cwl
inputs:
- id: in_fig_dir
  doc: "Path to the output figure directory.\nBy default, the figure is only shown\n\
    but not saved."
  type: File?
  inputBinding:
    prefix: --figdir
- id: in_interactive
  doc: "Interactively shows plots and asks\nfor thresholds."
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_plot
  doc: "Shows plots of library composition\nand 3C events abundance."
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_prefix
  doc: "If the library has a name, it will\nbe shown on the figures."
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_thresholds
  doc: "Manually defines integer values for\nthe thresholds in the order\n[uncut,\
    \ loop]. Reads above those values\nare kept.\n"
  type: long?
  inputBinding:
    prefix: --thresholds
- id: in_input
  doc: "2D BED file containing coordinates of Hi-C interacting\npairs, the index of\
    \ their restriction fragment and their\nstrands."
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Path to the filtered file, in the same format as the input.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fig_dir
  doc: "Path to the output figure directory.\nBy default, the figure is only shown\n\
    but not saved."
  type: File?
  outputBinding:
    glob: $(inputs.in_fig_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- hicstuff
- filter
