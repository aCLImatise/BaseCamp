class: CommandLineTool
id: dbxuncompress.cwl
inputs:
- id: in_outfile
  doc: outfile    [*.dbxuncompress] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_index_dir
  doc: directory  Index directory (optional)
  type: boolean?
  inputBinding:
    prefix: -indexdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxuncompress] Output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- dbxuncompress
