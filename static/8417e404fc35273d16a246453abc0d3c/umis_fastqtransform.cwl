class: CommandLineTool
id: umis_fastqtransform.cwl
inputs:
- id: in_keep_fast_q_tags
  doc: Keep dual index barcodes separate.
  type: boolean?
  inputBinding:
    prefix: --keep_fastq_tags
- id: in_demux_ed_cb
  doc: Minimum length of read to keep.
  type: long?
  inputBinding:
    prefix: --demuxed_cb
- id: in_stdout_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- umis
- fastqtransform
