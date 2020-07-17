class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/orthomclDumpPairsFiles.cwl
inputs:
- id: mcl_input
  doc: '- file required by the mcl program'
  type: string
  inputBinding:
    position: 0
- id: pairs_slash
  doc: '- dir holding relationship files'
  type: string
  inputBinding:
    position: 1
- id: potential_orthologs_dot_txt
  doc: '- ortholog relationships'
  type: string
  inputBinding:
    position: 2
- id: potential_in_paralogs_dot_txt
  doc: '- inparalog relationships'
  type: string
  inputBinding:
    position: 3
- id: potential_co_orthologs_dot_txt
  doc: '- coortholog relationships'
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- orthomclDumpPairsFiles
