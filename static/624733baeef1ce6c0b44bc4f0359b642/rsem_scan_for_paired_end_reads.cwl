class: CommandLineTool
id: ../../../rsem_scan_for_paired_end_reads.cwl
inputs:
- id: input_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-scan-for-paired-end-reads
