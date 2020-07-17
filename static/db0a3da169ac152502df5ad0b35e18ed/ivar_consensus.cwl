class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ivar_consensus.cwl
inputs:
- id: minimum_quality_score
  doc: 'Minimum quality score threshold to count base (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: minimum_frequency_threshold
  doc: 'Minimum frequency threshold(0 - 1) to call consensus. (Default: 0) Frequently
    used thresholds | Description ---------------------------|------------ 0 | Majority
    or most common base 0.2 | Bases that make up atleast 20% of the depth at a position
    0.5 | Strict or bases that make up atleast 50% of the depth at a position 0.9
    | Strict or bases that make up atleast 90% of the depth at a position 1 | Identical
    or bases that make up 100% of the depth at a position. Will have highest ambiguities'
  type: boolean
  inputBinding:
    prefix: -t
- id: minimum_depth_call
  doc: 'Minimum depth to call consensus(Default: 10)'
  type: boolean
  inputBinding:
    prefix: -m
- id: will_override_option
  doc: "If '-k' flag is added, regions with depth less than minimum depth will not\
    \ be added to the consensus sequence. Using '-k' will override any option specified\
    \ using -n "
  type: boolean
  inputBinding:
    prefix: -k
- id: n__character
  doc: '(N/-) Character to print in regions with less than minimum coverage(Default:
    N)'
  type: boolean
  inputBinding:
    prefix: -n
- id: required_prefix_output
  doc: (Required) Prefix for the output fasta file and quality file
  type: boolean
  inputBinding:
    prefix: -p
- id: aa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aa
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: var_9
  doc: ''
  type: string
  inputBinding:
    prefix: -Q
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- consensus
