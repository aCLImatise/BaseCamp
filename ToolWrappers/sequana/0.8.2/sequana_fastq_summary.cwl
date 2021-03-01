class: CommandLineTool
id: sequana_fastq_summary.cwl
inputs:
- id: in_pattern
  doc: input fastq gzipped or not
  type: string?
  inputBinding:
    prefix: --pattern
- id: in_se_quan_a_fast_q_count
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
- sequana_fastq_summary
