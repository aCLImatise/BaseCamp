class: CommandLineTool
id: nanoplexer.cwl
inputs:
- id: input_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b
  doc: FILE    barcode file
  type: boolean
  inputBinding:
    prefix: -b
- id: d
  doc: FILE    dual barcode pair file
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: CHAR    output path
  type: boolean
  inputBinding:
    prefix: -p
- id: l
  doc: FILE    output log file
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: CHAR    output mode, fastq or fasta [default fastq]
  type: boolean
  inputBinding:
    prefix: -M
- id: b
  doc: NUM     batch size [default 400M]
  type: boolean
  inputBinding:
    prefix: -B
- id: t
  doc: INT     number of threads [default 3]
  type: boolean
  inputBinding:
    prefix: -t
- id: l
  doc: INT     target length for detecting barcode [default 150]
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: INT     match score [default 2]
  type: boolean
  inputBinding:
    prefix: -m
- id: x
  doc: INT     mismatch score [default 2]
  type: boolean
  inputBinding:
    prefix: -x
- id: o
  doc: INT     gap open score [default 3]
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: INT     gap extension score [default 1]
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: INT     minimal alignment score for demultiplexing
  type: boolean
  inputBinding:
    prefix: -s
- id: i
  doc: ignore parameter estimation
  type: boolean
  inputBinding:
    prefix: -i
- id: v
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoplexer
