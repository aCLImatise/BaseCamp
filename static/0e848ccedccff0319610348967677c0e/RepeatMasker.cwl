class: CommandLineTool
id: ../../../RepeatMasker.cwl
inputs:
- id: var_0
  doc: perc perc perc  query    position in query     matching repeat      position
    in  repeat
  type: string
  inputBinding:
    position: 0
- id: nt__taan
  doc: '0.0 0.0 2.9 NT_001227 105436 105469  (2184) + (TAA)n    Simple        2   34    (0)  118  '
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: perc perc perc  query   position in query   matching repeat      position in  repeat      rat
    hum
  type: string
  inputBinding:
    position: 0
- id: _chr_atrich
  doc: 0.0  0.0 0.0 chr19 314125 314147 (58909378) +  AT_rich Low_complexity    1   23  (0)  378  -  -
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RepeatMasker
