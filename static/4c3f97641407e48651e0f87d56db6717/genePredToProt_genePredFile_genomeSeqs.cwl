class: CommandLineTool
id: genePredToProt_genePredFile_genomeSeqs.cwl
inputs:
- id: prot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToProt
- genePredFile
- genomeSeqs
