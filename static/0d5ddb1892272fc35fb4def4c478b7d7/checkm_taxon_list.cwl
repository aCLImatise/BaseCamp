class: CommandLineTool
id: ../../../checkm_taxon_list.cwl
inputs:
- id: rank
  doc: 'restrict list to specified taxonomic rank (default: ALL)'
  type: string
  inputBinding:
    prefix: --rank
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- taxon_list
