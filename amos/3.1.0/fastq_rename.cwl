class: CommandLineTool
id: fastq_rename.cwl
inputs:
- id: prefix
  doc: ': add prefix to each readname'
  type: string
  inputBinding:
    prefix: -prefix
- id: renum
  doc: ': replace the readname as a sequential number 1,2,...,E,F,10,11...'
  type: boolean
  inputBinding:
    prefix: -renum
- id: clean
  doc: ': clean the sequence name by removing sequence after first space'
  type: boolean
  inputBinding:
    prefix: -clean
- id: tr
  doc: ': replace these characters in the readname'
  type: string
  inputBinding:
    prefix: -tr
- id: trc
  doc: ': when replacing, replace with this (default: _)'
  type: string
  inputBinding:
    prefix: -trc
- id: suffix
  doc: ': add suffix to each readname'
  type: string
  inputBinding:
    prefix: -suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq_rename
