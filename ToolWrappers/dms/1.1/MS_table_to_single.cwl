class: CommandLineTool
id: MS_table_to_single.cwl
inputs:
- id: in_species_table
  doc: species table [Required]
  type: string?
  inputBinding:
    prefix: -i
- id: in_input_table_reversed
  doc: the input table is reversed, T(rue) or F(alse), default is false [Optional]
  type: string?
  inputBinding:
    prefix: -R
- id: in_file_directory_default
  doc: file directory, default is "result"
  type: File?
  inputBinding:
    prefix: -o
- id: in_name_of_output
  doc: name of output
  type: string?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dms:1.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- MS-table-to-single
