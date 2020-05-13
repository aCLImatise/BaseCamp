class: CommandLineTool
id: ca2ta.cwl
inputs:
- id: check
  doc: Prints out those seqnames that are shorter than MINSEQ
  type: boolean
  inputBinding:
    prefix: -check
- id: min_seq
  doc: sets MINSEQ.  Default is 64
  type: boolean
  inputBinding:
    prefix: -minseq
- id: o
  doc: Output prefix
  type: string
  inputBinding:
    prefix: -o
- id: filter
  doc: filters the .frg file for sequences shorter than MINSEQ
  type: boolean
  inputBinding:
    prefix: -filter
- id: no_qual
  doc: doesnt create .qual file
  type: boolean
  inputBinding:
    prefix: -noqual
- id: mates
  doc: creates a .mates file indicating which sequences are mates
  type: boolean
  inputBinding:
    prefix: -mates
outputs: []
cwlVersion: v1.1
baseCommand:
- ca2ta
