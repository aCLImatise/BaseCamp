class: CommandLineTool
id: genePredToProt_genomeSeqs.cwl
inputs:
- id: gene_pred_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_seqs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: prot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToProt
- genomeSeqs
