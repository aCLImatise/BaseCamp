class: CommandLineTool
id: findGO.pl.cwl
inputs:
- id: in_cpu
  doc: <#> (number of cpus to use)
  type: File?
  inputBinding:
    prefix: -cpu
- id: in_human
  doc: (convert IDs and run as human [uses homologene])
  type: boolean?
  inputBinding:
    prefix: -human
- id: in_custom_id
  doc: (don't convert IDs)
  type: boolean?
  inputBinding:
    prefix: -customID
- id: in_ontology
  doc: '[file2.genes] ... (custom ontologies)'
  type: File?
  inputBinding:
    prefix: -ontology
- id: in_target_ids_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_organism
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- findGO.pl
