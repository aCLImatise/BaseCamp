class: CommandLineTool
id: equicktandem.cwl
inputs:
- id: in_max_repeat
  doc: "integer    [600] Maximum repeat size (Any integer\nvalue)"
  type: boolean?
  inputBinding:
    prefix: -maxrepeat
- id: in_threshold
  doc: integer    [20] Threshold score (Any integer value)
  type: boolean?
  inputBinding:
    prefix: -threshold
- id: in_orig_file
  doc: "outfile    [*.equicktandem] Sanger Centre program\nquicktandem output file\
    \ (optional)"
  type: File?
  inputBinding:
    prefix: -origfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_orig_file
  doc: "outfile    [*.equicktandem] Sanger Centre program\nquicktandem output file\
    \ (optional)"
  type: File?
  outputBinding:
    glob: $(inputs.in_orig_file)
hints: []
cwlVersion: v1.1
baseCommand:
- equicktandem
