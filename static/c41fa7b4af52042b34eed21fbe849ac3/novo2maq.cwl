class: CommandLineTool
id: novo2maq.cwl
inputs:
- id: out_map
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_novo
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: s
  doc: '|off Turns on or off the Smith-Waterman check of indels. When only indels
    that/n                          would be part of optimum local alignment are converted
    as MAQ indels. Default is off /n                          which will report all
    indels found by Novoalign.'
  type: string
  inputBinding:
    prefix: -s
- id: r
  doc: Produces short report on number of alignments per reference sequence.
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- novo2maq
