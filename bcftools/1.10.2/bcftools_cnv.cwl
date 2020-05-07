class: CommandLineTool
id: bcftools_cnv.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_vcf
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: plot_threshold
  doc: plot aberrant chromosomes with quality at least 'float'
  type: double
  inputBinding:
    prefix: --plot-threshold
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: query_sample
  doc: query samply name
  type: string
  inputBinding:
    prefix: --query-sample
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: aberrant
  doc: <float[,float]>     fraction of aberrant cells in query and control [1.0,1.0]
  type: boolean
  inputBinding:
    prefix: --aberrant
- id: baf_weight
  doc: relative contribution from BAF [1]
  type: double
  inputBinding:
    prefix: --BAF-weight
- id: baf_dev
  doc: <float[,float]>      expected BAF deviation in query and control [0.04,0.04]
  type: boolean
  inputBinding:
    prefix: --BAF-dev
- id: err_prob
  doc: uniform error probability [1e-4]
  type: double
  inputBinding:
    prefix: --err-prob
- id: lrr_dev
  doc: <float[,float]>      expected LRR deviation [0.2,0.2]
  type: boolean
  inputBinding:
    prefix: --LRR-dev
- id: lrr_weight
  doc: relative contribution from LRR [0.2]
  type: double
  inputBinding:
    prefix: --LRR-weight
- id: lrr_smooth_win
  doc: window of LRR moving average smoothing [10]
  type: long
  inputBinding:
    prefix: --LRR-smooth-win
- id: optimize
  doc: estimate fraction of aberrant cells down to <float> [1.0]
  type: double
  inputBinding:
    prefix: --optimize
- id: same_prob
  doc: prior probability of -s/-c being the same [0.5]
  type: double
  inputBinding:
    prefix: --same-prob
- id: xy_prob
  doc: P(x|y) transition probability [1e-9]
  type: double
  inputBinding:
    prefix: --xy-prob
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- cnv
