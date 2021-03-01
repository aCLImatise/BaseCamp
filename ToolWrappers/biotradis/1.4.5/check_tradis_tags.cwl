class: CommandLineTool
id: check_tradis_tags.cwl
inputs:
- id: in_bam_file_tradis
  doc: ': bam file with tradis tags'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_check_tags
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- check_tradis_tags
