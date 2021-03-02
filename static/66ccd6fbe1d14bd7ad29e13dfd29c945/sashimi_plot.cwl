class: CommandLineTool
id: sashimi_plot.cwl
inputs:
- id: in_plot_insert_len
  doc: "Plot the insert length distribution from a given\ninsert length (*.insert_len)\
    \ filename. Second argument\nis a settings file name."
  type: long?
  inputBinding:
    prefix: --plot-insert-len
- id: in_plot_bf_dist
  doc: "Plot Bayes factor distributon. Takes the arguments:\n(1) Bayes factor filename\
    \ (*.miso_bf) filename, (2) a\nsettings filename."
  type: File?
  inputBinding:
    prefix: --plot-bf-dist
- id: in_plot_event
  doc: "Plot read densities and MISO inferences for a given\nalternative event. Takes\
    \ the arguments: (1) event name\n(i.e. the ID= of the event based on MISO gff3\n\
    annotation file, (2) directory where indexed GFF\nannotation is (output of index_gff.py),\
    \ (3) path to\nplotting settings file."
  type: File?
  inputBinding:
    prefix: --plot-event
- id: in_no_posteriors
  doc: "If given this argument, MISO posterior estimates are\nnot plotted."
  type: boolean?
  inputBinding:
    prefix: --no-posteriors
- id: in_plot_title
  doc: "Title of plot: a string that will be displayed at top\nof plot. Example: --plot-title\
    \ \"My favorite gene\"."
  type: string?
  inputBinding:
    prefix: --plot-title
- id: in_plot_label
  doc: "Plot label. If given, plot will be saved in the output\ndirectory as the plot\
    \ label ending in the relevant\nextension, e.g. <plot_label>.pdf. Example: --plot-\n\
    label my_gene"
  type: Directory?
  inputBinding:
    prefix: --plot-label
- id: in_output_dir
  doc: "Output directory.\n"
  type: Directory?
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_plot_event
  doc: "Plot read densities and MISO inferences for a given\nalternative event. Takes\
    \ the arguments: (1) event name\n(i.e. the ID= of the event based on MISO gff3\n\
    annotation file, (2) directory where indexed GFF\nannotation is (output of index_gff.py),\
    \ (3) path to\nplotting settings file."
  type: File?
  outputBinding:
    glob: $(inputs.in_plot_event)
- id: out_plot_label
  doc: "Plot label. If given, plot will be saved in the output\ndirectory as the plot\
    \ label ending in the relevant\nextension, e.g. <plot_label>.pdf. Example: --plot-\n\
    label my_gene"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_plot_label)
- id: out_output_dir
  doc: "Output directory.\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- sashimi_plot
