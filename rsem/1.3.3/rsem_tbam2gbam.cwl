class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rsem_tbam2gbam.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: unsorted_transcript_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genome_bam_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-tbam2gbam
