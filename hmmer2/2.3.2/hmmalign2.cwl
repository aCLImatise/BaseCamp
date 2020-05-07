class: CommandLineTool
id: hmmalign2.cwl
inputs:
- id: hmm_align
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: m
  doc: ': only print symbols aligned to match states'
  type: boolean
  inputBinding:
    prefix: -m
- id: o
  doc: ': save alignment in file <f>'
  type: string
  inputBinding:
    prefix: -o
- id: q
  doc: ': quiet - suppress verbose banner'
  type: boolean
  inputBinding:
    prefix: -q
- id: in_format
  doc: ': sequence file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: map_ali
  doc: ': include alignment in file <f> using map in HMM'
  type: string
  inputBinding:
    prefix: --mapali
- id: one_line
  doc: ': output Stockholm fmt with 1 line/seq, not interleaved'
  type: boolean
  inputBinding:
    prefix: --oneline
- id: out_format
  doc: ': output alignment in format <s> [default: Stockholm] formats include: MSF,
    Clustal, Phylip, SELEX'
  type: string
  inputBinding:
    prefix: --outformat
- id: with_ali
  doc: ': include alignment to (fixed) alignment in file <f>'
  type: string
  inputBinding:
    prefix: --withali
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmalign2
