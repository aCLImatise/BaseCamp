class: CommandLineTool
id: ../../../msaccess.cwl
inputs:
- id: arg_text_file
  doc: '[ --filelist ] arg    : text file containing filenames to process'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_output_directory
  doc: '[ --outdir ] arg (=.) : output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: arg_configuration_file
  doc: '[ --config ] arg      : configuration file (containing settings as  optionName=value)'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_execute_command
  doc: '[ --exec ] arg        : execute command, e.g --exec "tic mz=409-412"'
  type: boolean
  inputBinding:
    prefix: -x
- id: filter
  doc: ': add a spectrum list filter, e.g. --filter="msLevel [2,3]"'
  type: string
  inputBinding:
    prefix: --filter
- id: print_progress_messages
  doc: '[ --verbose ]         : print progress messages'
  type: boolean
  inputBinding:
    prefix: -v
- id: filenames
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- msaccess
