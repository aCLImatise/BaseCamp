class: CommandLineTool
id: filter_bracken.out.py.cwl
inputs:
- id: in_input_file
  doc: Input bracken OUTPUT file. [NOT the report file]
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_file
  doc: Output bracken OUTPUT file.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_include
  doc: "[T_INCLUDE ...]\nList of taxonomy IDs to include in output [space-\ndelimited]\
    \ - default=All"
  type: boolean?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "[T_EXCLUDE ...]\nList of taxonomy IDs to exclude in output [space-\ndelimited]\
    \ - default=None\n"
  type: boolean?
  inputBinding:
    prefix: --exclude
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output bracken OUTPUT file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- filter_bracken.out.py
