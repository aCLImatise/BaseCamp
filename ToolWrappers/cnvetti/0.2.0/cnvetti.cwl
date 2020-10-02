class: CommandLineTool
id: cnvetti.cwl
inputs:
- id: in_verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_io_threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: long
  inputBinding:
    prefix: --io-threads
- id: in_cmd
  doc: Low-level access to the CNVetti primitives.
  type: string
  inputBinding:
    position: 0
- id: in_quick
  doc: Easy-to-use shortcuts for command and important use cases.
  type: string
  inputBinding:
    position: 1
- id: in_visualize
  doc: Visualization of coverage information (on-target, off-target, and genome-wide
    bins).
  type: string
  inputBinding:
    position: 2
- id: in_annotate
  doc: Perform annotate called CNV result BCF files
  type: string
  inputBinding:
    position: 3
- id: in_help
  doc: Prints this message or the help of the given subcommand(s)
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cnvetti
