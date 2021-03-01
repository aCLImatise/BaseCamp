class: CommandLineTool
id: csfasta_to_fastq.cwl
inputs:
- id: in_cs_fast_a
  doc: (string)        input SOLiD csfasta file.
  type: boolean?
  inputBinding:
    prefix: -csfasta
- id: in_qual
  doc: (string)        input SOLiD quality file.
  type: boolean?
  inputBinding:
    prefix: -qual
- id: in_warning
  doc: it reports warnigs to stderr
  type: boolean?
  inputBinding:
    prefix: -warning
- id: in_log
  doc: (string)        log file.
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_cs_fast_a_fast_q
  doc: ''
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
- csfasta_to_fastq
