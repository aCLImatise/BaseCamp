class: CommandLineTool
id: sashimi_plot.cwl
inputs:
- id: plot_insert_len
  doc: Plot the insert length distribution from a given insert length (*.insert_len)
    filename. Second argument is a settings file name.
  type: string
  inputBinding:
    prefix: --plot-insert-len
- id: plot_bf_dist
  doc: 'Plot Bayes factor distributon. Takes the arguments: (1) Bayes factor filename
    (*.miso_bf) filename, (2) a settings filename.'
  type: string
  inputBinding:
    prefix: --plot-bf-dist
- id: plot_event
  doc: 'Plot read densities and MISO inferences for a given alternative event. Takes
    the arguments: (1) event name (i.e. the ID= of the event based on MISO gff3 annotation
    file, (2) directory where indexed GFF annotation is (output of index_gff.py),
    (3) path to plotting settings file.'
  type: string
  inputBinding:
    prefix: --plot-event
- id: no_posteriors
  doc: If given this argument, MISO posterior estimates are not plotted.
  type: boolean
  inputBinding:
    prefix: --no-posteriors
- id: plot_title
  doc: 'Title of plot: a string that will be displayed at top of plot. Example: --plot-title
    "My favorite gene".'
  type: string
  inputBinding:
    prefix: --plot-title
- id: plot_label
  doc: 'Plot label. If given, plot will be saved in the output directory as the plot
    label ending in the relevant extension, e.g. <plot_label>.pdf. Example: --plot-
    label my_gene'
  type: string
  inputBinding:
    prefix: --plot-label
- id: output_dir
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- sashimi_plot
