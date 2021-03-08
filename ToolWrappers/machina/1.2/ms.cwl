class: CommandLineTool
id: ms.cwl
inputs:
- id: in_color_map_file
  doc: Color map file
  type: File?
  inputBinding:
    prefix: -c
- id: in_output_search_graph
  doc: Output search graph
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_maxim_number_enumerate
  doc: 'Maxim number of mutation trees to enumerate (default: -1, unlimited)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_prefix
  doc: Output prefix
  type: string?
  inputBinding:
    prefix: -o
- id: in_primary_tumor
  doc: Primary tumor
  type: string?
  inputBinding:
    prefix: -p
- id: in_migration_tree_file
  doc: "Migration tree file\n"
  type: File?
  inputBinding:
    prefix: -s
- id: in_frequencies
  doc: Frequencies
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- ms
