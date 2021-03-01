class: CommandLineTool
id: cacheensembl.cwl
inputs:
- id: in_servername
  doc: string     Server name (Any string)
  type: boolean?
  inputBinding:
    prefix: -servername
- id: in_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_six_dot_six_dot_zero_dot_zero
  doc: 'Standard (Mandatory) qualifiers:'
  type: double
  inputBinding:
    position: 0
- id: in_file
  doc: 'Additional (Optional) qualifiers:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- cacheensembl
