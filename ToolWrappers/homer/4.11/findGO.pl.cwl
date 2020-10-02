class: CommandLineTool
id: findGO.pl.cwl
inputs:
- id: in_bg
  doc: "-cpu <#> (number of cpus to use)\n-human (convert IDs and run as human [uses\
    \ homologene])\n-customID (don't convert IDs)\n-ontology <file.genes> [file2.genes]\
    \ ... (custom ontologies)\n"
  type: File
  inputBinding:
    prefix: -bg
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
cwlVersion: v1.1
baseCommand:
- findGO.pl
