class: CommandLineTool
id: dbxcompress.cwl
inputs:
- id: in_outfile
  doc: outfile    [*.dbxcompress] Output file name
  type: File
  inputBinding:
    prefix: -outfile
- id: in_index_dir
  doc: directory  Index directory (optional)
  type: boolean
  inputBinding:
    prefix: -indexdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxcompress] Output file name
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- dbxcompress
