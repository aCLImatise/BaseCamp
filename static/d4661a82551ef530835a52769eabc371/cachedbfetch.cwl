class: CommandLineTool
id: cachedbfetch.cwl
inputs:
- id: in_outfile
  doc: outfile    [stdout] Output file name
  type: File
  inputBinding:
    prefix: -outfile
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
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- cachedbfetch
