class: CommandLineTool
id: hic2cool_update.cwl
inputs:
- id: in_outfile
  doc: optional new output file path
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_silent
  doc: if used, silence standard program output
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_warnings
  doc: "if used, print out non-critical WARNING messages,\nwhich are hidden by default.\
    \ Silent mode takes\nprecedence over this\n"
  type: boolean?
  inputBinding:
    prefix: --warnings
- id: in_in_file
  doc: cooler input file path
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: optional new output file path
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- hic2cool
- update
