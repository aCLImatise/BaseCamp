class: CommandLineTool
id: rsem_get_unique.cwl
inputs:
- id: in_number_of_threads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_unsorted_transcript_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_bam_output
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-get-unique
