class: CommandLineTool
id: ice.cwl
inputs:
- id: in_filter_low_counts_perc
  doc: Percentage of reads to filter out
  type: string?
  inputBinding:
    prefix: --filter_low_counts_perc
- id: in_filter_high_counts_perc
  doc: Percentage of reads to filter out
  type: string?
  inputBinding:
    prefix: --filter_high_counts_perc
- id: in_remove_all_zeros_loci
  doc: "If provided, all non-interacting loci will be removed\nprior to the filtering\
    \ strategy chosen."
  type: boolean?
  inputBinding:
    prefix: --remove-all-zeros-loci
- id: in_max_iter
  doc: Maximum number of iterations
  type: long?
  inputBinding:
    prefix: --max_iter
- id: in_eps
  doc: Precision
  type: string?
  inputBinding:
    prefix: --eps
- id: in_output_bias
  doc: Output the bias vector
  type: string?
  inputBinding:
    prefix: --output-bias
- id: in_verbose
  doc: Indicates whether the matrix file is 0 or 1-based
  type: File?
  inputBinding:
    prefix: --verbose
- id: in_results_filename
  doc: ''
  type: File?
  inputBinding:
    prefix: --results_filename
- id: in_normalization
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/iced:0.5.8--py38h1773678_0
cwlVersion: v1.1
baseCommand:
- ice
