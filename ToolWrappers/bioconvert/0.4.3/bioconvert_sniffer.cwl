class: CommandLineTool
id: bioconvert_sniffer.cwl
inputs:
- id: in_verbosity
  doc: Set the outpout verbosity.
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_input
  doc: Set the input file.
  type: string[]
  inputBinding:
    prefix: --input
- id: in_quiet
  doc: "simply return a two columns output with filename and\nfound format."
  type: File?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_quiet
  doc: "simply return a two columns output with filename and\nfound format."
  type: File?
  outputBinding:
    glob: $(inputs.in_quiet)
hints: []
cwlVersion: v1.1
baseCommand:
- bioconvert_sniffer
