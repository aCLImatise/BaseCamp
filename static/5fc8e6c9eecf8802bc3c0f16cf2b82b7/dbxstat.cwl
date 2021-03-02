class: CommandLineTool
id: dbxstat.cwl
inputs:
- id: in_outfile
  doc: outfile    [*.dbxstat] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_index_dir
  doc: directory  Index directory (optional)
  type: boolean?
  inputBinding:
    prefix: -indexdir
- id: in_minimum
  doc: integer    [1] Minimum occurrences (Integer 1 or more)
  type: boolean?
  inputBinding:
    prefix: -minimum
- id: in_maximum
  doc: "integer    [0] Maximum occurrences (0=no maximum)\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -maximum
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxstat] Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- dbxstat
