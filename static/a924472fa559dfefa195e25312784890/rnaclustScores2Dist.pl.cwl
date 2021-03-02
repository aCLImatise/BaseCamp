class: CommandLineTool
id: rnaclustScores2Dist.pl.cwl
inputs:
- id: in_man
  doc: full documentation
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_verbose
  doc: be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: be quiet
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_quantile
  doc: the quantile
  type: boolean?
  inputBinding:
    prefix: --quantile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnaclustScores2Dist.pl
