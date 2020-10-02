class: CommandLineTool
id: mclcm.cwl
inputs:
- id: in_shared_mcl_options
  doc: shared mcl options
  type: string
  inputBinding:
    prefix: -a
- id: in_tf
  doc: <func(arg)[, func(arg)]*> apply unary transformations to matrix values
  type: boolean
  inputBinding:
    prefix: -tf
- id: in_show_default_options
  doc: show default shared options
  type: boolean
  inputBinding:
    prefix: -z
- id: in_bone
  doc: dedicated parameters to construct base transformed matrix
  type: long
  inputBinding:
    prefix: -b1
- id: in_b_two
  doc: dedicated parameters to construct base expanded matrix
  type: long
  inputBinding:
    prefix: -b2
- id: in_an_not
  doc: describes the experiment, useful when command-line is propagated
  type: string
  inputBinding:
    prefix: -annot
- id: in_use_start_clustering
  doc: use as start clustering
  type: string
  inputBinding:
    prefix: -c
- id: in_contract
  doc: use contraction approach (default)
  type: boolean
  inputBinding:
    prefix: --contract
- id: in_sub_cluster
  doc: use subclustering approach
  type: boolean
  inputBinding:
    prefix: --subcluster
- id: in_integrate
  doc: construct hierarchy from cluster (file) arguments
  type: boolean
  inputBinding:
    prefix: --integrate
- id: in_dispatch
  doc: construct hierarchy from multiple mcl runs
  type: boolean
  inputBinding:
    prefix: --dispatch
- id: in_iterate_most_num
  doc: 'iterate at most <num> times (default: until root clustering)'
  type: long
  inputBinding:
    prefix: -n
- id: in_root
  doc: make sure universe clustering is at the top
  type: string
  inputBinding:
    prefix: -root
- id: in_cone
  doc: file to write nested cluster stack to
  type: File
  inputBinding:
    prefix: -cone
- id: in_stack
  doc: file to write expanded cluster stack to
  type: File
  inputBinding:
    prefix: -stack
- id: in_coarse
  doc: file to write coarsened graphs to
  type: File
  inputBinding:
    prefix: -coarse
- id: in_write_base
  doc: file to write base graph to
  type: File
  inputBinding:
    prefix: -write-base
- id: in_write
  doc: <tags> may contain 'stack', 'cone', 'coarse', 'steps'
  type: string
  inputBinding:
    prefix: -write
- id: in_stem
  doc: file prefix for cone, stack, and coarse
  type: File
  inputBinding:
    prefix: -stem
- id: in_mplex
  doc: additionally write clusterings to separate files
  type: string
  inputBinding:
    prefix: --mplex
- id: in_quiet_level_logging
  doc: quiet level of logging
  type: string
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mclcm
