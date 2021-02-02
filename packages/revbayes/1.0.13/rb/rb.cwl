class: CommandLineTool
id: rb.cwl
inputs:
- id: in_show_version_exit
  doc: '[ --version ]      Show version and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_run_batch_mode
  doc: '[ --batch ]        Run in batch mode.'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_args
  doc: Command line arguments to initialize RevBayes
  type: string
  inputBinding:
    prefix: --args
- id: in_file
  doc: File(s) to source.
  type: File
  inputBinding:
    prefix: --file
- id: in_setoption
  doc: Set an option key=value.
  type: string
  inputBinding:
    prefix: --setOption
- id: in_variables_dot
  doc: '--cmd arg             Script and command line arguments to initialize '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rb
