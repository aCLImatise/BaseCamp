class: CommandLineTool
id: tango_update_taxonmap.cwl
inputs:
- id: taxon_map
  doc: Existing prot.accession2taxid.gz file
  type: string
  inputBinding:
    position: 0
- id: id_file
  doc: File mapping long sequence ids to new ids
  type: string
  inputBinding:
    position: 1
- id: new_file
  doc: Updated mapfile
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- update
- taxonmap
