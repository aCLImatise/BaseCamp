class: CommandLineTool
id: ../../../chainNet.cwl
inputs:
- id: min_space
  doc: '- minimum gap size to fill, default 25'
  type: string
  inputBinding:
    prefix: -minSpace
- id: min_fill
  doc: '- default half of minSpace'
  type: string
  inputBinding:
    prefix: -minFill
- id: min_score
  doc: '- minimum chain score to consider, default 2000.0'
  type: string
  inputBinding:
    prefix: -minScore
- id: verbose
  doc: '- Alter verbosity (default 1)'
  type: string
  inputBinding:
    prefix: -verbose
- id: incl_hap
  doc: '- include query sequences name in the form *_hap*|*_alt*. Normally these are
    excluded from nets as being haplotype pseudochromosomes'
  type: boolean
  inputBinding:
    prefix: -inclHap
- id: in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: target_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: query_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: target_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: query_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- chainNet
