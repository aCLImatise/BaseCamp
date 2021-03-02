class: CommandLineTool
id: dbtell.cwl
inputs:
- id: in_full
  doc: "boolean    [N] The default behaviour is to report for\nrelevant databases\
    \ only basic information\nfrom the EMBOSS database definition"
  type: boolean?
  inputBinding:
    prefix: -full
- id: in_outfile
  doc: outfile    [stdout] Output file name
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_server
  doc: "string     The name of the server defined locally for\nuse by EMBOSS. (Any\
    \ string)"
  type: boolean?
  inputBinding:
    prefix: -server
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
- dbtell
