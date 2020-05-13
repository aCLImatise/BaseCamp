class: CommandLineTool
id: sequana_fastq_summary.cwl
inputs:
- id: pattern
  doc: input fastq gzipped or not
  type: string
  inputBinding:
    prefix: --pattern
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_fastq_summary
