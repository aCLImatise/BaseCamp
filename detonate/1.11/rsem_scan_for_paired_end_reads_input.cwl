class: CommandLineTool
id: rsem_scan_for_paired_end_reads_input.sam.cwl
inputs:
- id: output_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-scan-for-paired-end-reads
- input.sam
