class: CommandLineTool
id: portcullis_rule_filter.cwl
inputs:
- id: input
  doc: Portcullis junction file (tab separated).
  type: string
  inputBinding:
    position: 0
- id: json
  doc: Rules for filtering
  type: string
  inputBinding:
    prefix: --json
- id: pos_json
  doc: '[POS_JSON [POS_JSON ...]] File containing rules for positive set filtering.
    Multiple positive rule sets allowed. Intersection of all files taken as positive
    set.'
  type: boolean
  inputBinding:
    prefix: --pos_json
- id: neg_json
  doc: '[NEG_JSON [NEG_JSON ...]] File containing rules for negative set filtering.
    Multiple negative rule sets allowed. Union of all files taken as negative set'
  type: boolean
  inputBinding:
    prefix: --neg_json
- id: genuine
  doc: A simple line separated list file indicating whether each junction in the input
    file is genuine or not 0 means not genuine, 1 means genuine. This is used to evaulate
    the performance of the rule filtering.
  type: string
  inputBinding:
    prefix: --genuine
- id: prefix
  doc: The prefix to apply to all portcullis junction output files.
  type: string
  inputBinding:
    prefix: --prefix
- id: save_layers
  doc: Whether to output the junctions at each layer
  type: boolean
  inputBinding:
    prefix: --save_layers
- id: save_failed
  doc: Whether to output the junctions not passing the filter
  type: boolean
  inputBinding:
    prefix: --save_failed
- id: verbose
  doc: Output additional information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- portcullis_rule_filter
