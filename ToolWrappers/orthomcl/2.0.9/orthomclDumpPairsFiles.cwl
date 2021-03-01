class: CommandLineTool
id: orthomclDumpPairsFiles.cwl
inputs:
- id: in_mcl_input
  doc: '- file required by the mcl program'
  type: string
  inputBinding:
    position: 0
- id: in_potential_orthologs_dot_txt
  doc: '- ortholog relationships'
  type: string
  inputBinding:
    position: 0
- id: in_potential_in_paralogs_dot_txt
  doc: '- inparalog relationships'
  type: string
  inputBinding:
    position: 1
- id: in_potential_co_orthologs_dot_txt
  doc: '- coortholog relationships'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- orthomclDumpPairsFiles
