class: CommandLineTool
id: bcftools_cnv.cwl
inputs:
- id: in_control_sample
  doc: optional control sample name to highlight differences
  type: string?
  inputBinding:
    prefix: --control-sample
- id: in_af_file
  doc: read allele frequencies from file (CHR\tPOS\tREF,ALT\tAF)
  type: File?
  inputBinding:
    prefix: --AF-file
- id: in_plot_threshold
  doc: plot aberrant chromosomes with quality at least 'float'
  type: File?
  inputBinding:
    prefix: --plot-threshold
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_query_sample
  doc: query samply name
  type: string?
  inputBinding:
    prefix: --query-sample
- id: in_targets
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_aberrant
  doc: <float[,float]>     fraction of aberrant cells in query and control [1.0,1.0]
  type: boolean?
  inputBinding:
    prefix: --aberrant
- id: in_baf_weight
  doc: relative contribution from BAF [1]
  type: double?
  inputBinding:
    prefix: --BAF-weight
- id: in_baf_dev
  doc: <float[,float]>      expected BAF deviation in query and control [0.04,0.04]
  type: boolean?
  inputBinding:
    prefix: --BAF-dev
- id: in_err_prob
  doc: uniform error probability [1e-4]
  type: double?
  inputBinding:
    prefix: --err-prob
- id: in_lrr_dev
  doc: <float[,float]>      expected LRR deviation [0.2,0.2]
  type: boolean?
  inputBinding:
    prefix: --LRR-dev
- id: in_lrr_weight
  doc: relative contribution from LRR [0.2]
  type: double?
  inputBinding:
    prefix: --LRR-weight
- id: in_lrr_smooth_win
  doc: window of LRR moving average smoothing [10]
  type: long?
  inputBinding:
    prefix: --LRR-smooth-win
- id: in_optimize
  doc: estimate fraction of aberrant cells down to <float> [1.0]
  type: double?
  inputBinding:
    prefix: --optimize
- id: in_same_prob
  doc: prior probability of -s/-c being the same [0.5]
  type: double?
  inputBinding:
    prefix: --same-prob
- id: in_xy_prob
  doc: P(x|y) transition probability [1e-9]
  type: double?
  inputBinding:
    prefix: --xy-prob
- id: in_file_dot_vcf
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bcftools
- cnv
