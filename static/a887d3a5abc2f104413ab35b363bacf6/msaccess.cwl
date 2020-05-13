class: CommandLineTool
id: msaccess.cwl
inputs:
- id: filenames
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: f
  doc: '[ --filelist ] arg    : text file containing filenames to process'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: '[ --outdir ] arg (=.) : output directory'
  type: boolean
  inputBinding:
    prefix: -o
- id: c
  doc: '[ --config ] arg      : configuration file (containing settings as  optionName=value)'
  type: boolean
  inputBinding:
    prefix: -c
- id: x
  doc: '[ --exec ] arg        : execute command, e.g --exec "tic mz=409-412"'
  type: boolean
  inputBinding:
    prefix: -x
- id: filter
  doc: ': add a spectrum list filter, e.g. --filter="msLevel [2,3]"'
  type: string
  inputBinding:
    prefix: --filter
- id: v
  doc: '[ --verbose ]         : print progress messages'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- msaccess
