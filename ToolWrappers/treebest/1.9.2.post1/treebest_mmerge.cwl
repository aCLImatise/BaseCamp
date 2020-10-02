class: CommandLineTool
id: treebest_mmerge.cwl
inputs:
- id: in_reroot
  doc: reroot
  type: boolean
  inputBinding:
    prefix: -r
- id: in_species_tree
  doc: species tree [default taxa tree]
  type: File
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- mmerge
