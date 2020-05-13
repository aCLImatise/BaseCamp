class: CommandLineTool
id: rsem_get_unique_bam_output.cwl
inputs:
- id: number_of_threads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: unsorted_transcript_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-get-unique
- bam_output
