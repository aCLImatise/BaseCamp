class: CommandLineTool
id: pdb_variants.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_mutations_list_txt
  doc: "Output variants list text file name\n"
  type: File?
  inputBinding:
    prefix: --output_mutations_list_txt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_mutations_list_txt
  doc: "Output variants list text file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_mutations_list_txt)
hints: []
cwlVersion: v1.1
baseCommand:
- pdb_variants
