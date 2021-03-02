class: CommandLineTool
id: rgt_hint_plotting.cwl
inputs:
- id: in_organism
  doc: "Organism considered on the analysis. Check our full\ndocumentation for all\
    \ available options. All default\nfiles such as genomes will be based on the chosen\n\
    organism and the data.config file."
  type: File?
  inputBinding:
    prefix: --organism
- id: in_region_file
  doc: ',FILE1_R'
  type: File?
  inputBinding:
    prefix: --region-file
- id: in_bias_table_one
  doc: ',FILE1_R'
  type: File?
  inputBinding:
    prefix: --bias-table1
- id: in_bias_table_two
  doc: ',FILE1_R'
  type: File?
  inputBinding:
    prefix: --bias-table2
- id: in_output_location
  doc: "Path where the output bias table files will be\nwritten."
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_output_prefix
  doc: The prefix for results files.
  type: string?
  inputBinding:
    prefix: --output-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_location
  doc: "Path where the output bias table files will be\nwritten."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_location)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- plotting
