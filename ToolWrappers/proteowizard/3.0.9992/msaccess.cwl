class: CommandLineTool
id: msaccess.cwl
inputs:
- id: in_arg_text_file
  doc: '[ --filelist ] arg    : text file containing filenames to process'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_output_directory
  doc: '[ --outdir ] arg (=.) : output directory'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_configuration_file
  doc: "[ --config ] arg      : configuration file (containing settings as\noptionName=value)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_execute_command
  doc: '[ --exec ] arg        : execute command, e.g --exec "tic mz=409-412"'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_filter
  doc: ": add a spectrum list filter, e.g. --filter=\"msLevel\n[2,3]\""
  type: long?
  inputBinding:
    prefix: --filter
- id: in_print_progress_messages
  doc: '[ --verbose ]         : print progress messages'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_options
  doc: FILTER OPTIONS
  type: string
  inputBinding:
    position: 0
- id: in_metadata
  doc: (write file-level metadata)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_directory
  doc: '[ --outdir ] arg (=.) : output directory'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- msaccess
