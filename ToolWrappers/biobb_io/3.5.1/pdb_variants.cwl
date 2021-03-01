class: CommandLineTool
id: pdb_variants.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_mutations_list_txt
  doc: "Path to the TXT file containing an ASCII comma separated values of the mutations.\
    \ Accepted formats: txt.\n"
  type: File?
  inputBinding:
    prefix: --output_mutations_list_txt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_io:3.5.1--py_0
cwlVersion: v1.1
baseCommand:
- pdb_variants
