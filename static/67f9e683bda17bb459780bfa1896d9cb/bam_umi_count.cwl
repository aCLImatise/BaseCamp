class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam_umi_count.cwl
inputs:
- id: bam
  doc: ''
  type: string
  inputBinding:
    prefix: --bam
- id: u_counts
  doc: ''
  type: string
  inputBinding:
    prefix: --ucounts
- id: min_reads
  doc: ''
  type: string
  inputBinding:
    prefix: --min_reads
- id: min_um_is
  doc: ''
  type: string
  inputBinding:
    prefix: --min_umis
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_umi_count
