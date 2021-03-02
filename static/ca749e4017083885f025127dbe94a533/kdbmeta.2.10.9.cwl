class: CommandLineTool
id: kdbmeta.2.10.9.cwl
inputs:
- id: in_table
  doc: table-name
  type: string?
  inputBinding:
    prefix: --table
- id: in_unsigned
  doc: print numeric values as unsigned
  type: boolean?
  inputBinding:
    prefix: --unsigned
- id: in_read_only
  doc: operate in read-only mode
  type: boolean?
  inputBinding:
    prefix: --read-only
- id: in_output
  doc: "Output type: one of (xml text):  whether to\ngenerate well-formed XML. Default:\
    \ xml\n(well-formed)"
  type: string?
  inputBinding:
    prefix: --output
- id: in_ngc
  doc: path to ngc file
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
- id: in_path_to_database
  doc: access database metadata
  type: File
  inputBinding:
    position: 0
- id: in_path_to_table
  doc: access table metadata
  type: File
  inputBinding:
    position: 1
- id: in_path_to_column
  doc: access column metadata
  type: File
  inputBinding:
    position: 2
- id: in_accession
  doc: sra global access id
  type: string
  inputBinding:
    position: 3
- id: in_name
  doc: a named root node and children
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'kdbmeta.2.10.9 : 2.10.9'
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
- kdbmeta.2.10.9
