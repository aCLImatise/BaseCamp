class: CommandLineTool
id: embossversion.cwl
inputs:
- id: in_full
  doc: boolean    Show all EMBOSS version information fields
  type: boolean
  inputBinding:
    prefix: -full
- id: in_outfile
  doc: outfile    [stdout] EMBOSS version output file
  type: File
  inputBinding:
    prefix: -outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] EMBOSS version output file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- embossversion
