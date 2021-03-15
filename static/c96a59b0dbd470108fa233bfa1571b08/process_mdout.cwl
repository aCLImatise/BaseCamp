class: CommandLineTool
id: process_mdout.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_log_path
  doc: 'AMBER (sander) MD output (log) file. Accepted formats: log, out, txt, o.'
  type: File?
  inputBinding:
    prefix: --input_log_path
- id: in_output_dat_path
  doc: "Dat output file containing data from the specified terms along the MD process.\
    \ File type: output. Accepted formats: dat, txt, csv.\n"
  type: File?
  inputBinding:
    prefix: --output_dat_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_log_path
  doc: 'AMBER (sander) MD output (log) file. Accepted formats: log, out, txt, o.'
  type: File?
  outputBinding:
    glob: $(inputs.in_input_log_path)
- id: out_output_dat_path
  doc: "Dat output file containing data from the specified terms along the MD process.\
    \ File type: output. Accepted formats: dat, txt, csv.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dat_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_amber:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- process_mdout
