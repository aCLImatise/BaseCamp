class: CommandLineTool
id: genePredToBigGenePred.cwl
inputs:
- id: in_known
  doc: input file is a genePred in knownGene format
  type: boolean
  inputBinding:
    prefix: -known
- id: in_score
  doc: scores is two column file with id's mapping to scores
  type: File
  inputBinding:
    prefix: -score
- id: in_gene_names
  doc: geneNames is a three column file with id's mapping to two gene names
  type: File
  inputBinding:
    prefix: -geneNames
- id: in_colors
  doc: colors is a four column file with id's mapping to r,g,b
  type: File
  inputBinding:
    prefix: -colors
- id: in_cds
  doc: cds is a five column file with id's mapping to cds status codes and exonFrames
    (see knownCds.as)
  type: File
  inputBinding:
    prefix: -cds
- id: in_file_do_tgp
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_stdout
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genePredToBigGenePred
