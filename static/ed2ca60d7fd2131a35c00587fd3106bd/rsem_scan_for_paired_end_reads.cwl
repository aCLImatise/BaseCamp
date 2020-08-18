class: CommandLineTool
id: ../../../rsem_scan_for_paired_end_reads.cwl
inputs:
- id: number_of_threads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_dot
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sam_slash_bam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-scan-for-paired-end-reads
