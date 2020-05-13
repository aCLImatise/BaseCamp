class: CommandLineTool
id: create_metaplots.bash_ribo.bam_name.cwl
inputs:
- id: bed_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- create_metaplots.bash
- ribo.bam
- name
