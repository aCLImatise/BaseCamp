class: CommandLineTool
id: chainNet.cwl
inputs:
- id: in_min_space
  doc: '- minimum gap size to fill, default 25'
  type: long?
  inputBinding:
    prefix: -minSpace
- id: in_min_fill
  doc: '- default half of minSpace'
  type: string?
  inputBinding:
    prefix: -minFill
- id: in_min_score
  doc: '- minimum chain score to consider, default 2000.0'
  type: double?
  inputBinding:
    prefix: -minScore
- id: in_verbose
  doc: '- Alter verbosity (default 1)'
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_incl_hap
  doc: "- include query sequences name in the form *_hap*|*_alt*.\nNormally these\
    \ are excluded from nets as being haplotype\npseudochromosomes\n"
  type: boolean?
  inputBinding:
    prefix: -inclHap
- id: in_in_dot_chain
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_dot_sizes
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_target_dotnet
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chainNet
