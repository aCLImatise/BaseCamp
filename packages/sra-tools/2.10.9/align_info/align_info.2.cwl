class: CommandLineTool
id: align_info.2.cwl
inputs:
- id: in_all
  doc: print all information
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_ref
  doc: print refseq information [default]
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_bam
  doc: print bam header (if present)
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_qual
  doc: print quality statistics (if present)
  type: boolean?
  inputBinding:
    prefix: --qual
- id: in_headers
  doc: print headers for output blocks
  type: boolean?
  inputBinding:
    prefix: --headers
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
- id: in_db_path
  doc: Path to the database
  type: File
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: 'align-info.2 : 2.10.9'
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
- align-info.2
