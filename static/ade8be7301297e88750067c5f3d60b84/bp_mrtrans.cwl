class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_mrtrans.pl.cwl
inputs:
- id: _output_filename
  doc: '- the output filename [default STDOUT]'
  type: File
  inputBinding:
    prefix: -o
- id: of
  doc: '- output sequence format (multiple sequence alignment) [default phylip]'
  type: string
  inputBinding:
    prefix: -of
- id: _input_filename
  doc: '- the input filename [required]'
  type: File
  inputBinding:
    prefix: -i
- id: if
  doc: '- input sequence format (multiple sequence alignment) [ default clustalw]'
  type: string
  inputBinding:
    prefix: -if
- id: seq_db
  doc: '- the cDNA sequence database file'
  type: File
  inputBinding:
    prefix: --seqdb
- id: seq_format
  doc: '- the cDNA seq db format (flatfile sequence format)'
  type: boolean
  inputBinding:
    prefix: --seqformat
- id: var_6
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_8
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_9
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: var_11
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_12
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_mrtrans.pl
