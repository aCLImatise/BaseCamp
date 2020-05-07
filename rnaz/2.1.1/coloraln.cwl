class: CommandLineTool
id: coloraln.pl.cwl
inputs:
- id: file_aln
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: s
  doc: 'read file to extract the consensus structure (default: "alirna.ps")'
  type: File
  inputBinding:
    prefix: -s
- id: c
  doc: 'break alignments into blocks of at most width columns, (default: 120)'
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: 'suppress conversion of "T" to "U", i.e. do not convert DNA to RNA, (default:
    convert to "U")'
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: add a "ruler" below the alignment showing sequence positions
  type: boolean
  inputBinding:
    prefix: -r
- id: n
  doc: write sequence position at the end of each sequence line
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- coloraln.pl
