class: CommandLineTool
id: BlastAlignP.cwl
inputs:
- id: must
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: have
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: blast_align_p
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: s
  doc: <T/F> Leave in stop codons T(rue)/F(alse - replace with gaps). Optional; default
    = T
  type: boolean
  inputBinding:
    prefix: -s
- id: m
  doc: <max proportion of gaps allowed in any one sequence in the final alignment>
    Optional; default = 0.95
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: <T/F> Retain original names in output file. T(rue)/F(alse). Optional; default
    = T; option F is to output the 15 character abbreviations stripped of potentially
    problematic symbols which is used in the program
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- BlastAlignP
