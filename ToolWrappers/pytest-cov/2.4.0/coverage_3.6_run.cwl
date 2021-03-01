class: CommandLineTool
id: coverage_3.6_run.cwl
inputs:
- id: in_append
  doc: "Append coverage data to .coverage, otherwise it starts\nclean each time."
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_branch
  doc: Measure branch coverage in addition to statement
  type: boolean?
  inputBinding:
    prefix: --branch
- id: in_omit
  doc: ",PAT2,...  Omit files whose paths match one of these patterns.\nAccepts shell-style\
    \ wildcards, which must be quoted."
  type: long?
  inputBinding:
    prefix: --omit
- id: in_py_lib
  doc: "Measure coverage even inside the Python installed\nlibrary, which isn't done\
    \ by default."
  type: boolean?
  inputBinding:
    prefix: --pylib
- id: in_parallel_mode
  doc: "Append the machine name, process id and random number\nto the .coverage data\
    \ file name to simplify collecting\ndata from many processes."
  type: boolean?
  inputBinding:
    prefix: --parallel-mode
- id: in_source
  doc: ",SRC2,...\nA list of packages or directories of code to be\nmeasured."
  type: long?
  inputBinding:
    prefix: --source
- id: in_timid
  doc: "Use a simpler but slower trace method.  Try this if\nyou get seemingly impossible\
    \ results!"
  type: boolean?
  inputBinding:
    prefix: --timid
- id: in_debug
  doc: Debug options, separated by commas
  type: string?
  inputBinding:
    prefix: --debug
- id: in_rcfile
  doc: Specify configuration file.  Defaults to '.coveragerc'
  type: File?
  inputBinding:
    prefix: --rcfile
- id: in_coverage_dot
  doc: --concurrency=LIB     Properly measure code using a concurrency library.
  type: string
  inputBinding:
    position: 0
- id: in_quoted_dot
  doc: -m, --module          <pyfile> is an importable Python module, not a script
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- coverage-3.6
- run
