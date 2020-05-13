class: CommandLineTool
id: genePredToProt_genePredFile_protFa.cwl
inputs:
- id: genome_seqs
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: prot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToProt
- genePredFile
- protFa
