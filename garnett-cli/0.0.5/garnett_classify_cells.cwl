class: CommandLineTool
id: garnett_classify_cells.R.cwl
inputs:
- id: verbose
  doc: 'Logical. Should progress messages be printed. Default: FASLE.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: plot_output_path
  doc: output path for the t-SNE plots. In case --cluster-extend tag is provided,
    two plots will be made. If no path is provided, plots will not be produced.
  type: string
  inputBinding:
    prefix: --plot-output-path
- id: cds_output_obj
  doc: Output path for cds object holding predicted labels on query data
  type: string
  inputBinding:
    prefix: --cds-output-obj
outputs: []
cwlVersion: v1.1
baseCommand:
- garnett_classify_cells.R
