class: CommandLineTool
id: dcmrecv.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_config_file
  doc: "[f]ilename, [p]rofile: string\nuse profile p from configuration file f"
  type: boolean?
  inputBinding:
    prefix: --config-file
- id: in_ae_title
  doc: "[a]etitle: string\nset my AE title (default: DCMRECV)"
  type: boolean?
  inputBinding:
    prefix: --aetitle
- id: in_use_called_ae_title
  doc: always respond with called AE title
  type: boolean?
  inputBinding:
    prefix: --use-called-aetitle
- id: in_acse_timeout
  doc: "[s]econds: integer (default: 30)\ntimeout for ACSE messages"
  type: boolean?
  inputBinding:
    prefix: --acse-timeout
- id: in_dim_se_timeout
  doc: "[s]econds: integer (default: unlimited)\ntimeout for DIMSE messages"
  type: boolean?
  inputBinding:
    prefix: --dimse-timeout
- id: in_max_pdu
  doc: "[n]umber of bytes: integer (4096..131072)\nset max receive pdu to n bytes\
    \ (default: 16384)"
  type: boolean?
  inputBinding:
    prefix: --max-pdu
- id: in_disable_host_lookup
  doc: disable hostname lookup
  type: boolean?
  inputBinding:
    prefix: --disable-host-lookup
- id: in_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite received objects to existing directory\
    \ d"
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_no_subdir
  doc: do not generate any subdirectories (default)
  type: boolean?
  inputBinding:
    prefix: --no-subdir
- id: in_filename_extension
  doc: "[e]xtension: string (default: none)\nappend e to all generated filenames"
  type: boolean?
  inputBinding:
    prefix: --filename-extension
- id: in_normal
  doc: allow implicit format conversions (default)
  type: boolean?
  inputBinding:
    prefix: --normal
- id: in_ignore
  doc: ignore dataset, receive but do not store it
  type: boolean?
  inputBinding:
    prefix: --ignore
- id: in_port
  doc: tcp/ip port number to listen on
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "[d]irectory: string (default: \".\")\nwrite received objects to existing directory\
    \ d"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0
cwlVersion: v1.1
baseCommand:
- dcmrecv
