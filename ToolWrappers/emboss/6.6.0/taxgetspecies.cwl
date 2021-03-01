class: CommandLineTool
id: taxgetspecies.cwl
inputs:
- id: in_taxons
  doc: ': enter taxon value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean?
  inputBinding:
    prefix: -taxons
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxgetspecies
