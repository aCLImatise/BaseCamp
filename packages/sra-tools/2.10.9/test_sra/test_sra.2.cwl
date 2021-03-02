class: CommandLineTool
id: test_sra.2.cwl
inputs:
- id: in_xml_text_generate
  doc: < xml | text > - whether to generate well-formed XML
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_check_objects_recursively
  doc: '- check objects recursively'
  type: boolean?
  inputBinding:
    prefix: -R
- id: in__call_vdbmanagerpathtype
  doc: '- do not call VDBManagerPathType'
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_disable_caching_default
  doc: '- do not disable caching (default: from configuration)'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_bytes
  doc: "- print the first K bytes of resolved remote HTTP file)\n(default: 256)"
  type: File?
  inputBinding:
    prefix: --bytes
- id: in_library
  doc: '- print version of dynamic library'
  type: File?
  inputBinding:
    prefix: --library
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
  doc: "Read more options and parameters from the\nfile.\n"
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_l
  doc: ''
  type: File?
  inputBinding:
    prefix: -L
- id: in_q
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
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
- test-sra.2
