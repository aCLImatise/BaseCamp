class: CommandLineTool
id: vdb_decrypt.2.cwl
inputs:
- id: in_force
  doc: Force overwrite of existing files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_decrypt_sra_files
  doc: decrypt sra archives [NOT RECOMMENDED]
  type: boolean?
  inputBinding:
    prefix: --decrypt-sra-files
- id: in_ngc
  doc: PATH to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_source_file
  doc: file to decrypt
  type: File
  inputBinding:
    position: 0
- id: in_destination_file
  doc: name of resulting file
  type: File
  inputBinding:
    position: 1
- id: in_destination_directory
  doc: directory of resulting file
  type: Directory
  inputBinding:
    position: 2
- id: in_directory
  doc: directory to decrypt
  type: Directory
  inputBinding:
    position: 3
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'Details:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- vdb-decrypt.2
