class: CommandLineTool
id: ivar_consensus.cwl
inputs:
- id: in_minimum_quality_score
  doc: 'Minimum quality score threshold to count base (Default: 20)'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_minimum_frequency_threshold
  doc: "Minimum frequency threshold(0 - 1) to call consensus. (Default: 0)\nFrequently\
    \ used thresholds | Description\n---------------------------|------------\n0 |\
    \ Majority or most common base\n0.2 | Bases that make up atleast 20% of the depth\
    \ at a position\n0.5 | Strict or bases that make up atleast 50% of the depth at\
    \ a position\n0.9 | Strict or bases that make up atleast 90% of the depth at a\
    \ position\n1 | Identical or bases that make up 100% of the depth at a position.\
    \ Will have highest ambiguities"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_minimum_depth_call
  doc: 'Minimum depth to call consensus(Default: 10)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_override_option_specified
  doc: If '-k' flag is added, regions with depth less than minimum depth will not
    be added to the consensus sequence. Using '-k' will override any option specified
    using -n
  type: boolean?
  inputBinding:
    prefix: -k
- id: in__character_print
  doc: '(N/-) Character to print in regions with less than minimum coverage(Default:
    N)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_required_prefix_output
  doc: (Required) Prefix for the output fasta file and quality file
  type: File?
  inputBinding:
    prefix: -p
- id: in_var_6
  doc: ''
  type: long?
  inputBinding:
    prefix: -Q
- id: in_d
  doc: ''
  type: long?
  inputBinding:
    prefix: -d
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_aa
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -aa
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_m_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_required_prefix_output
  doc: (Required) Prefix for the output fasta file and quality file
  type: File?
  outputBinding:
    glob: $(inputs.in_required_prefix_output)
hints: []
cwlVersion: v1.1
baseCommand:
- ivar
- consensus
