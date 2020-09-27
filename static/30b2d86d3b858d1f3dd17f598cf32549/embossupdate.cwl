class: CommandLineTool
id: embossupdate.cwl
inputs:
- id: in_outfile
  doc: outfile    [stdout] EMBOSS update output file
  type: File
  inputBinding:
    prefix: -outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] EMBOSS update output file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- embossupdate
