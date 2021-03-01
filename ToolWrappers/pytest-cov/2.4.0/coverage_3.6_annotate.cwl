class: CommandLineTool
id: coverage_3.6_annotate.cwl
inputs:
- id: in_directory
  doc: Write the output files to DIR.
  type: Directory?
  inputBinding:
    prefix: --directory
- id: in_ignore_errors
  doc: Ignore errors while reading source files.
  type: boolean?
  inputBinding:
    prefix: --ignore-errors
- id: in_include
  doc: ",PAT2,...\nInclude only files whose paths match one of these\npatterns. Accepts\
    \ shell-style wildcards, which must be\nquoted."
  type: long?
  inputBinding:
    prefix: --include
- id: in_omit
  doc: ",PAT2,...  Omit files whose paths match one of these patterns.\nAccepts shell-style\
    \ wildcards, which must be quoted."
  type: long?
  inputBinding:
    prefix: --omit
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
- id: in_modules
  doc: ''
  type: string?
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
- annotate
