class: CommandLineTool
id: servertell.cwl
inputs:
- id: in_full
  doc: "boolean    [N] The default behaviour is to report for\nrelevant servers only\
    \ basic information from\nthe EMBOSS server definition"
  type: boolean
  inputBinding:
    prefix: -full
- id: in_outfile
  doc: outfile    [stdout] Output file name
  type: File
  inputBinding:
    prefix: -outfile
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
- servertell
