class: CommandLineTool
id: ../../../wgsim_eval.pl_uniqcmp.cwl
inputs:
- id: confident_mapping_mapping
  doc: confident mapping if mapping quality above INT [20]
  type: long
  inputBinding:
    prefix: -q
- id: same_mapping_distance
  doc: same mapping if the distance below INT [100]
  type: long
  inputBinding:
    prefix: -s
- id: penalty_for_difference
  doc: penalty for a difference [4]
  type: long
  inputBinding:
    prefix: -b
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: wg_sim_eval_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- wgsim_eval.pl
- uniqcmp
