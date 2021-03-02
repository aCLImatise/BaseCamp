class: CommandLineTool
id: calcuts.cwl
inputs:
- id: in_float_minimum_depth
  doc: FLOAT    minimum depth count fraction to maximum depth count [.1]
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_int_lower_bound
  doc: INT      lower bound for read depth
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_int_transition_haploid
  doc: INT      transition between haploid and diploid
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_upper_bound
  doc: INT      upper bound for read depth
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_treat_haploid_others
  doc: 'treat as haploid assembly or diploid assembly, 1: haploid, others: diploid
    [0]'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_options
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_stat
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- calcuts
