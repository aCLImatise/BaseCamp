class: CommandLineTool
id: rsem_tbam2gbam.cwl
inputs:
- id: in_p
  doc: ''
  type: long
  inputBinding:
    prefix: -p
- id: in_reference_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_unsorted_transcript_bam_input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_genome_bam_output
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
- rsem-tbam2gbam
