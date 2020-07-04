class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/checkm_taxon_set.cwl
inputs:
- id: quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: tmpdir
  doc: specify an alternative directory for temporary files
  type: string
  inputBinding:
    prefix: --tmpdir
outputs: []
cwlVersion: v1.1
baseCommand:
- checkm
- taxon_set
