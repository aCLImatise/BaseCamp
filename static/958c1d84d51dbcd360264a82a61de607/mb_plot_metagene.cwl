class: CommandLineTool
id: mb_plot_metagene.cwl
inputs:
- id: pc_table
  doc: path to the PAR-CLIP *.table
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: output directory
  type: string
  inputBinding:
    position: 1
- id: prefix
  doc: prefix of filenames
  type: string
  inputBinding:
    position: 2
- id: gff_file
  doc: GFF file used for plotting
  type: string
  inputBinding:
    position: 3
- id: downstream_bp
  doc: downstream bp
  type: string
  inputBinding:
    prefix: --downstream_bp
- id: upstream_bp
  doc: upstream bp
  type: string
  inputBinding:
    prefix: --upstream_bp
- id: gene_bp
  doc: annotation body bp
  type: string
  inputBinding:
    prefix: --gene_bp
- id: min_ts_len
  doc: minimum annotation length
  type: long
  inputBinding:
    prefix: --min_ts_len
- id: max_ts_len
  doc: maximum annotation length
  type: long
  inputBinding:
    prefix: --max_ts_len
- id: smooth_window
  doc: window size used for running mean smoothing
  type: string
  inputBinding:
    prefix: --smooth_window
- id: label_center_a
  doc: plot label for the first center position
  type: string
  inputBinding:
    prefix: --labelCenterA
- id: label_body
  doc: for body (between A and B)
  type: string
  inputBinding:
    prefix: --labelBody
- id: label_center_b
  doc: plot label for the second center position
  type: string
  inputBinding:
    prefix: --labelCenterB
- id: title
  doc: plot title
  type: string
  inputBinding:
    prefix: --title
- id: cleanup
  doc: remove temporary files
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: seed
  doc: random seed
  type: string
  inputBinding:
    prefix: --seed
- id: n_bs_iterations
  doc: number of bootstrap iterations
  type: string
  inputBinding:
    prefix: --n_bs_iterations
- id: n_processes
  doc: number of parallel processes spawned
  type: string
  inputBinding:
    prefix: --n_processes
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-metagene
