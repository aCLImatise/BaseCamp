class: CommandLineTool
id: genePredToBigGenePred.cwl
inputs:
- id: known
  doc: input file is a genePred in knownGene format
  type: boolean
  inputBinding:
    prefix: -known
- id: score
  doc: scores is two column file with id's mapping to scores
  type: string
  inputBinding:
    prefix: -score
- id: gene_names
  doc: geneNames is a three column file with id's mapping to two gene names
  type: string
  inputBinding:
    prefix: -geneNames
- id: colors
  doc: colors is a four column file with id's mapping to r,g,b
  type: string
  inputBinding:
    prefix: -colors
- id: cds
  doc: cds is a five column file with id's mapping to cds status codes and exonFrames
    (see knownCds.as)
  type: string
  inputBinding:
    prefix: -cds
outputs: []
cwlVersion: v1.1
baseCommand:
- genePredToBigGenePred
