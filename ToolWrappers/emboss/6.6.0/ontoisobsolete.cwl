class: CommandLineTool
id: ontoisobsolete.cwl
inputs:
- id: in_obo_terms
  doc: ': enter obo value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean?
  inputBinding:
    prefix: -oboterms
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ontoisobsolete
