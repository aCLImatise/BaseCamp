class: CommandLineTool
id: rsem_get_unique_number_of_threads_bam_output.cwl
inputs:
- id: unsorted_transcript_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam_output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-get-unique
- number_of_threads
- bam_output
