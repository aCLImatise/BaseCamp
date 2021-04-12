class: CommandLineTool
id: pypgatk_cli.py_threeframe_translation.cwl
inputs:
- id: in_config_file
  doc: "Configuration to perform conversion between\nENSEMBL Files"
  type: string?
  inputBinding:
    prefix: --config_file
- id: in_input_fast_a
  doc: input_fasta file to perform the translation
  type: File?
  inputBinding:
    prefix: --input_fasta
- id: in_translation_table
  doc: Translation table default value 1
  type: long?
  inputBinding:
    prefix: --translation_table
- id: in_output
  doc: Output File
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output File
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.19--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- threeframe-translation
