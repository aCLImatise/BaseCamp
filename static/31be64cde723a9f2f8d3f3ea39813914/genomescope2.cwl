class: CommandLineTool
id: genomescope2.cwl
inputs:
- id: in_input
  doc: input histogram file
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: output directory name
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_ploidy
  doc: "ploidy (1, 2, 3, 4, 5, or 6) for model to use [default\n2]"
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_km_er_length
  doc: "kmer length used to calculate kmer spectra [default\n21]"
  type: long?
  inputBinding:
    prefix: --kmer_length
- id: in_name_prefix
  doc: optional name_prefix for output files
  type: string?
  inputBinding:
    prefix: --name_prefix
- id: in_k_merco_v
  doc: optional initial kmercov estimate for model to use
  type: string?
  inputBinding:
    prefix: --kmercov
- id: in_max_k_merco_v
  doc: "optional maximum kmer coverage threshold (kmers with\ncoverage greater than\
    \ max_kmercov are ignored by the\nmodel)"
  type: long?
  inputBinding:
    prefix: --max_kmercov
- id: in_verbose
  doc: optional flag to print messages during execution
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_unique_sequence
  doc: "optional flag to turn off yellow unique sequence line\nin plots"
  type: boolean?
  inputBinding:
    prefix: --no_unique_sequence
- id: in_topology
  doc: 'ADVANCED: flag for topology for model to use'
  type: string?
  inputBinding:
    prefix: --topology
- id: in_initial_repetitiveness
  doc: 'ADVANCED: flag to set initial value for repetitiveness'
  type: string?
  inputBinding:
    prefix: --initial_repetitiveness
- id: in_initial_hetero_zygo_sities
  doc: "ADVANCED: flag to set initial values for nucleotide\nheterozygosity rates"
  type: string?
  inputBinding:
    prefix: --initial_heterozygosities
- id: in_transform_exp
  doc: "ADVANCED: parameter for the exponent when fitting a\ntransformed (x**transform_exp*y\
    \ vs. x) kmer histogram\n[default 1]"
  type: long?
  inputBinding:
    prefix: --transform_exp
- id: in_testing
  doc: 'ADVANCED: flag to create testing.tsv file with model'
  type: boolean?
  inputBinding:
    prefix: --testing
- id: in_trace_flag
  doc: "ADVANCED: flag to turn on printing of iteration\nprogress of nlsLM function"
  type: boolean?
  inputBinding:
    prefix: --trace_flag
- id: in_num_rounds
  doc: "ADVANCED: parameter for the number of optimization\nrounds\n"
  type: long?
  inputBinding:
    prefix: --num_rounds
- id: in_parameters
  doc: --true_params TRUE_PARAMS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory name
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomescope2:2.0--r40_0
cwlVersion: v1.1
baseCommand:
- genomescope2
