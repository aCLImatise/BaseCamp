class: CommandLineTool
id: lyner_dendro.cwl
inputs:
- id: in_axis
  doc: "RANGE\n-m, --methods LIST\n--mode [consensus|each]\n-c, --num-components LIST\n\
    -r, --num-runs INTEGER\n--help                     Show this message and exit.\n"
  type: long
  inputBinding:
    prefix: --axis
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- dendro
