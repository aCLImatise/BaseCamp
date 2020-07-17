class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sequana_fastq_summary.cwl
inputs:
- id: pattern
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --pattern
- id: se_quan_a_fast_q_count
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_fastq_summary
