class: CommandLineTool
id: anvi_oligotype_linkmers.cwl
inputs:
- id: in_input_file
  doc: 'Output file of `anvi-report-linkmers`. (default: None)'
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_link_mers_txt
  doc: '🍕 Can provide: '
  type: string
  inputBinding:
    position: 0
- id: in_oligo_types
  doc: '🍺 More on `anvi-oligotype-linkmers`:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_file
  doc: 'Output file of `anvi-report-linkmers`. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_input_file)
- id: out_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-oligotype-linkmers
