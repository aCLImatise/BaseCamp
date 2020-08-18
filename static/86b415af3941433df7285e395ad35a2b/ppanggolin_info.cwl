class: CommandLineTool
id: ../../../ppanggolin_info.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: parameters
  doc: 'Shows the parameters used (or computed) for each step of the pangenome generation
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --parameters
- id: content
  doc: "Shows detailled informations about the pangenome's content (default: False)"
  type: boolean
  inputBinding:
    prefix: --content
- id: status
  doc: 'Shows informations about the statuses of the different elements of the pangenome
    (what has been computed, or not) (default: False)'
  type: boolean
  inputBinding:
    prefix: --status
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- info
