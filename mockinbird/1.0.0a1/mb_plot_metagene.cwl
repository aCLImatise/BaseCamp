class: CommandLineTool
id: ../../../mb_plot_metagene.cwl
inputs:
- id: in_downstream_bp
  doc: downstream bp
  type: string
  inputBinding:
    prefix: --downstream_bp
- id: in_upstream_bp
  doc: upstream bp
  type: string
  inputBinding:
    prefix: --upstream_bp
- id: in_gene_bp
  doc: annotation body bp
  type: string
  inputBinding:
    prefix: --gene_bp
- id: in_min_ts_len
  doc: minimum annotation length
  type: long
  inputBinding:
    prefix: --min_ts_len
- id: in_max_ts_len
  doc: maximum annotation length
  type: long
  inputBinding:
    prefix: --max_ts_len
- id: in_smooth_window
  doc: window size used for running mean smoothing
  type: long
  inputBinding:
    prefix: --smooth_window
- id: in_label_center_a
  doc: plot label for the first center position
  type: string
  inputBinding:
    prefix: --labelCenterA
- id: in_label_body
  doc: for body (between A and B)
  type: string
  inputBinding:
    prefix: --labelBody
- id: in_label_center_b
  doc: plot label for the second center position
  type: string
  inputBinding:
    prefix: --labelCenterB
- id: in_title
  doc: plot title
  type: string
  inputBinding:
    prefix: --title
- id: in_cleanup
  doc: remove temporary files
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: in_seed
  doc: random seed
  type: string
  inputBinding:
    prefix: --seed
- id: in_n_bs_iterations
  doc: number of bootstrap iterations
  type: long
  inputBinding:
    prefix: --n_bs_iterations
- id: in_n_processes
  doc: "number of parallel processes spawned\n"
  type: long
  inputBinding:
    prefix: --n_processes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene
