class: CommandLineTool
id: ../../../findGO.pl.cwl
inputs:
- id: cpu
  doc: <#> (number of cpus to use)
  type: boolean
  inputBinding:
    prefix: -cpu
- id: human
  doc: (convert IDs and run as human [uses homologene])
  type: boolean
  inputBinding:
    prefix: -human
- id: custom_id
  doc: (don't convert IDs)
  type: boolean
  inputBinding:
    prefix: -customID
- id: ontology
  doc: '[file2.genes] ... (custom ontologies)'
  type: File
  inputBinding:
    prefix: -ontology
- id: target_ids_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: organism
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_directory
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- findGO.pl
