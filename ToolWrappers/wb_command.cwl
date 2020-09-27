class: CommandLineTool
id: wb_command.cwl
inputs:
- id: in_arguments_help
  doc: explain the format of subcommand help info
  type: boolean
  inputBinding:
    prefix: -arguments-help
- id: in_global_options
  doc: display options that can be added to any command
  type: boolean
  inputBinding:
    prefix: -global-options
- id: in_parallel_help
  doc: details on how wb_command uses parallelization
  type: boolean
  inputBinding:
    prefix: -parallel-help
- id: in_cif_ti_help
  doc: explain the cifti file format and related terms
  type: boolean
  inputBinding:
    prefix: -cifti-help
- id: in_gift_i_help
  doc: explain the gifti file format (metric, surface)
  type: boolean
  inputBinding:
    prefix: -gifti-help
- id: in_volume_help
  doc: explain volume files, including label volumes
  type: boolean
  inputBinding:
    prefix: -volume-help
- id: in_version
  doc: show extended version information
  type: boolean
  inputBinding:
    prefix: -version
- id: in_list_commands
  doc: list all processing subcommands
  type: boolean
  inputBinding:
    prefix: -list-commands
- id: in_list_deprecated_commands
  doc: list deprecated subcommands
  type: boolean
  inputBinding:
    prefix: -list-deprecated-commands
- id: in_all_commands_help
  doc: "show all processing subcommands and their help\ninfo - VERY LONG"
  type: boolean
  inputBinding:
    prefix: -all-commands-help
- id: in_linux
  doc: 'Information options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wb_command
