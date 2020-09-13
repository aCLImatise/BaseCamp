class: CommandLineTool
id: ../../../umis_fastqtransform.cwl
inputs:
- id: in_keep_fast_q_tags
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep_fastq_tags
- id: in_separate_cb
  doc: Keep dual index barcodes separate.
  type: boolean
  inputBinding:
    prefix: --separate_cb
- id: in_demux_ed_cb
  doc: ''
  type: string
  inputBinding:
    prefix: --demuxed_cb
- id: in_cores
  doc: ''
  type: long
  inputBinding:
    prefix: --cores
- id: in_fast_q_one_out
  doc: ''
  type: long
  inputBinding:
    prefix: --fastq1out
- id: in_fast_q_two_out
  doc: ''
  type: long
  inputBinding:
    prefix: --fastq2out
- id: in_min_length
  doc: Minimum length of read to keep.
  type: long
  inputBinding:
    prefix: --min_length
- id: in_stdout_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- umis
- fastqtransform
