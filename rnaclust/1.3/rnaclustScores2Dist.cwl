class: CommandLineTool
id: rnaclustScores2Dist.pl.cwl
inputs:
- id: man
  doc: full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: verbose
  doc: be verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: be quiet
  type: boolean
  inputBinding:
    prefix: --quiet
- id: quantile
  doc: the quantile
  type: boolean
  inputBinding:
    prefix: --quantile
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaclustScores2Dist.pl
