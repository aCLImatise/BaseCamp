class: CommandLineTool
id: anvi_script_augustus_output_to_external_gene_calls.cwl
inputs:
- id: in_input_file
  doc: "Gene calls file from AUGUSTUS (that ends with .gff).\nPlease note that the\
    \ script is only tested with\nAUGUSTUS v3.3.3 output (although it may still work\n\
    with other versions of the program). (default: None)"
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
- id: in_augustus_gene_calls
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_external_gene_calls
  doc: '🍺 More on `anvi-script-augustus-output-to-external-gene-calls`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_file
  doc: "Gene calls file from AUGUSTUS (that ends with .gff).\nPlease note that the\
    \ script is only tested with\nAUGUSTUS v3.3.3 output (although it may still work\n\
    with other versions of the program). (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_input_file)
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-augustus-output-to-external-gene-calls
