class: CommandLineTool
id: merfishtools_exp.cwl
inputs:
- id: in_estimate
  doc: "Path to write expected value and standard deviation estimates of expression\
    \ to.\nOutput is formatted into columns: cell, feature, expected value, standard\
    \ deviation"
  type: File
  inputBinding:
    prefix: --estimate
- id: in_stats
  doc: "Path to write global statistics per cell to.\nOutput is formatted into columns:\
    \ cell, noise-rate"
  type: File
  inputBinding:
    prefix: --stats
- id: in_seed
  doc: Seed for shuffling that occurs in EM algorithm.
  type: long
  inputBinding:
    prefix: --seed
- id: in_pzero
  doc: '...              Prior probability of 0->1 error [default: 0.04]'
  type: double
  inputBinding:
    prefix: --p0
- id: in_p_one
  doc: '...              Prior probability of 1->0 error [default: 0.1]'
  type: double
  inputBinding:
    prefix: --p1
- id: in_cells
  doc: 'Regular expression to select cells from cell column (see above). [default:
    .*]'
  type: string
  inputBinding:
    prefix: --cells
- id: in_pm_f_window_width
  doc: '<INT,>    Width of the window to calculate PMF for. [default: 100]'
  type: boolean
  inputBinding:
    prefix: --pmf-window-width
- id: in_threads
  doc: 'Number of threads to use. [default: 1]'
  type: long
  inputBinding:
    prefix: --threads
- id: in_codebook_dot
  doc: <READOUTS>        Raw readout data containing molecule assignments to positions.
  type: string
  inputBinding:
    position: 0
- id: in_cell
  doc: feature
  type: string
  inputBinding:
    position: 0
- id: in_hamming_dist
  doc: cell_position_x
  type: string
  inputBinding:
    position: 1
- id: in_cell_position_y
  doc: rna_position_x
  type: string
  inputBinding:
    position: 2
- id: in_rna_position_y
  doc: Otherwise, the official MERFISH binary format is expected.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_estimate
  doc: "Path to write expected value and standard deviation estimates of expression\
    \ to.\nOutput is formatted into columns: cell, feature, expected value, standard\
    \ deviation"
  type: File
  outputBinding:
    glob: $(inputs.in_estimate)
- id: out_stats
  doc: "Path to write global statistics per cell to.\nOutput is formatted into columns:\
    \ cell, noise-rate"
  type: File
  outputBinding:
    glob: $(inputs.in_stats)
cwlVersion: v1.1
baseCommand:
- merfishtools
- exp
