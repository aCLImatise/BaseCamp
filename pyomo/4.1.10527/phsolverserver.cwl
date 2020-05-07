class: CommandLineTool
id: phsolverserver.cwl
inputs:
- id: hostname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: verbose
  doc: Generate verbose output for both initialization and execution. Default is False.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: profile
  doc: Enable profiling of Python code.  The value of this option is the number of
    functions that are summarized.
  type: string
  inputBinding:
    prefix: --profile
- id: disable_gc
  doc: Disable the python garbage collecter. Default is False.
  type: boolean
  inputBinding:
    prefix: --disable-gc
- id: traceback
  doc: When an exception is thrown, show the entire call stack. Ignored if profiling
    is enabled. Default is False.
  type: boolean
  inputBinding:
    prefix: --traceback
- id: user_defined_extension
  doc: The name of a python module specifying a user-defined PHSolverServer extension
    plugin.
  type: string
  inputBinding:
    prefix: --user-defined-extension
outputs: []
cwlVersion: v1.1
baseCommand:
- phsolverserver
