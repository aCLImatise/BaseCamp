class: CommandLineTool
id: fastq_rename.cwl
inputs:
- id: in_prefix
  doc: ': add prefix to each readname'
  type: string?
  inputBinding:
    prefix: -prefix
- id: in_renum
  doc: ': replace the readname as a sequential number 1,2,...,E,F,10,11...'
  type: boolean?
  inputBinding:
    prefix: -renum
- id: in_clean
  doc: ': clean the sequence name by removing sequence after first space'
  type: boolean?
  inputBinding:
    prefix: -clean
- id: in_tr
  doc: ': replace these characters in the readname'
  type: string?
  inputBinding:
    prefix: -tr
- id: in_trc
  doc: ': when replacing, replace with this (default: _)'
  type: string?
  inputBinding:
    prefix: -trc
- id: in_suffix
  doc: ': add suffix to each readname'
  type: string?
  inputBinding:
    prefix: -suffix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastq_rename
