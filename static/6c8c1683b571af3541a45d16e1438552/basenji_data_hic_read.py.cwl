class: CommandLineTool
id: basenji_data_hic_read.py.cwl
inputs:
- id: in_set_blacklist_nucleotides
  doc: Set blacklist nucleotides to a baseline value.
  type: string?
  inputBinding:
    prefix: -b
- id: in_clip_values_postsummary
  doc: 'Clip values post-summary to a maximum [Default: none]'
  type: string?
  inputBinding:
    prefix: -c
- id: in_scale_values_by
  doc: 'Scale values by [Default: 1.0]'
  type: double?
  inputBinding:
    prefix: -s
- id: in_soft
  doc: "Soft clip values, applying sqrt to the execess above the\nthreshold [Default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --soft
- id: in_summary_statistic_compute
  doc: 'Summary statistic to compute in windows [Default: sum]'
  type: string?
  inputBinding:
    prefix: -u
- id: in_average_pooling_width
  doc: 'Average pooling width [Default: 1]'
  type: long?
  inputBinding:
    prefix: -w
- id: in_as_obs_exp
  doc: save targets as obsexp profiles
  type: boolean?
  inputBinding:
    prefix: --as_obsexp
- id: in_genome_hic_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_seqs_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seqs_hic_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- basenji_data_hic_read.py
