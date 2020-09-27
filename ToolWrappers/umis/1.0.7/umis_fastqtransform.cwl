class: CommandLineTool
id: umis_fastqtransform.cwl
inputs:
- id: in_keep_fast_q_tags
  doc: "--separate_cb         Keep dual index barcodes separate.\n--demuxed_cb TEXT\n\
    --cores INTEGER\n--fastq1out TEXT\n--fastq2out TEXT\n--min_length INTEGER  Minimum\
    \ length of read to keep.\n--help                Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --keep_fastq_tags
- id: in_transform
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_q_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_fast_q_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_fast_q_three
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- fastqtransform
