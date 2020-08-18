class: CommandLineTool
id: ../../../GenomeOntology.pl.cwl
inputs:
- id: peak_file_slash_tag_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_directory
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: additional
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- GenomeOntology.pl
