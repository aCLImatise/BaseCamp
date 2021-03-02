class: CommandLineTool
id: damageprofiler.cwl
inputs:
- id: in_species_list
  doc: <SPECIES LIST>
  type: File?
  inputBinding:
    prefix: --specieslist
- id: in_mis_incorporations
  doc: -title,--title <TITLE>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- damageprofiler
