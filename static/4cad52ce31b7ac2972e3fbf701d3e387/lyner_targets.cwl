class: CommandLineTool
id: lyner_targets.cwl
inputs:
- id: in_targets
  doc: "-f, --from-file FILENAME\n-m, --mode [exclude|intersect]\n--help         \
    \                 Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --targets
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- targets
