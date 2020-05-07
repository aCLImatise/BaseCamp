class: CommandLineTool
id: proteinortho_history.pl.cwl
inputs:
- id: step
  doc: '=1 : search for the given fasta sequence in the input fasta files'
  type: boolean
  inputBinding:
    prefix: -step
- id: step
  doc: '=2 : search in the *.blast-graph'
  type: boolean
  inputBinding:
    prefix: -step
- id: step
  doc: '=3 : search in the *.proteinortho file '
  type: boolean
  inputBinding:
    prefix: -step
- id: step
  doc: ': prints everything of above to STDOUT'
  type: string
  inputBinding:
    prefix: -step
outputs: []
cwlVersion: v1.1
baseCommand:
- proteinortho_history.pl
