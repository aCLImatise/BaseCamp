class: CommandLineTool
id: ivar_consensus.cwl
inputs:
- id: q
  doc: 'Minimum quality score threshold to count base (Default: 20)'
  type: boolean
  inputBinding:
    prefix: -q
- id: t
  doc: 'Minimum frequency threshold(0 - 1) to call consensus. (Default: 0) Frequently
    used thresholds | Description ---------------------------|------------ 0 | Majority
    or most common base 0.2 | Bases that make up atleast 20% of the depth at a position
    0.5 | Strict or bases that make up atleast 50% of the depth at a position 0.9
    | Strict or bases that make up atleast 90% of the depth at a position 1 | Identical
    or bases that make up 100% of the depth at a position. Will have highest ambiguities'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: 'Minimum depth to call consensus(Default: 10)'
  type: boolean
  inputBinding:
    prefix: -m
- id: k
  doc: "If '-k' flag is added, regions with depth less than minimum depth will not\
    \ be added to the consensus sequence. Using '-k' will override any option specified\
    \ using -n "
  type: boolean
  inputBinding:
    prefix: -k
- id: n
  doc: '(N/-) Character to print in regions with less than minimum coverage(Default:
    N)'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: (Required) Prefix for the output fasta file and quality file
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ivar
- consensus
