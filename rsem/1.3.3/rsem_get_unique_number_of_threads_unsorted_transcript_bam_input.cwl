class: CommandLineTool
id: rsem_get_unique_number_of_threads_unsorted_transcript_bam_input.cwl
inputs:
- id: bam_output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-get-unique
- number_of_threads
- unsorted_transcript_bam_input
