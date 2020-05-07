class: CommandLineTool
id: _syco.cwl
inputs:
- id: c_file
  doc: codon      Codon usage file
  type: boolean
  inputBinding:
    prefix: -cfile
outputs: []
cwlVersion: v1.1
baseCommand:
- _syco
