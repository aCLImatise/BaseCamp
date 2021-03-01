class: CommandLineTool
id: loganalyser.cwl
inputs:
- id: in_burnin
  doc: percentage of log file to disregard, default 10
  type: File?
  inputBinding:
    prefix: --burnin
- id: in_one_line
  doc: "only one line of output per file.\nHeader is generated from the first file\
    \ only.\n(Implies quiet mode.)"
  type: File?
  inputBinding:
    prefix: -oneline
- id: in_quiet
  doc: mode.  Avoid printing status updates to stderr.
  type: string?
  inputBinding:
    prefix: -quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_one_line
  doc: "only one line of output per file.\nHeader is generated from the first file\
    \ only.\n(Implies quiet mode.)"
  type: File?
  outputBinding:
    glob: $(inputs.in_one_line)
hints: []
cwlVersion: v1.1
baseCommand:
- loganalyser
