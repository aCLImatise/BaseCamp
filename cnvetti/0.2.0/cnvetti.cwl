class: CommandLineTool
id: cnvetti.cwl
inputs:
- id: cmd
  doc: Low-level access to the CNVetti primitives.
  type: string
  inputBinding:
    position: 0
- id: quick
  doc: Easy-to-use shortcuts for command and important use cases.
  type: string
  inputBinding:
    position: 1
- id: visualize
  doc: Visualization of coverage information (on-target, off-target, and genome-wide
    bins).
  type: string
  inputBinding:
    position: 2
- id: annotate
  doc: Perform annotate called CNV result BCF files
  type: string
  inputBinding:
    position: 3
- id: help
  doc: Prints this message or the help of the given subcommand(s)
  type: string
  inputBinding:
    position: 4
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: io_threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: string
  inputBinding:
    prefix: --io-threads
outputs: []
cwlVersion: v1.1
baseCommand:
- cnvetti
