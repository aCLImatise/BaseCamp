class: CommandLineTool
id: merfishtools_exp.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: codebook_tsv
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: readouts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: estimate
  doc: 'Path to write expected value and standard deviation estimates of expression
    to. Output is formatted into columns: cell, feature, expected value, standard
    deviation'
  type: string
  inputBinding:
    prefix: --estimate
- id: stats
  doc: 'Path to write global statistics per cell to. Output is formatted into columns:
    cell, noise-rate'
  type: string
  inputBinding:
    prefix: --stats
- id: seed
  doc: Seed for shuffling that occurs in EM algorithm.
  type: long
  inputBinding:
    prefix: --seed
- id: p0
  doc: '...              Prior probability of 0->1 error [default: 0.04]'
  type: double
  inputBinding:
    prefix: --p0
- id: p1
  doc: '...              Prior probability of 1->0 error [default: 0.1]'
  type: double
  inputBinding:
    prefix: --p1
- id: cells
  doc: 'Regular expression to select cells from cell column (see above). [default:
    .*]'
  type: string
  inputBinding:
    prefix: --cells
- id: pm_f_window_width
  doc: '<INT,>    Width of the window to calculate PMF for. [default: 100]'
  type: boolean
  inputBinding:
    prefix: --pmf-window-width
- id: threads
  doc: 'Number of threads to use. [default: 1]'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- exp
