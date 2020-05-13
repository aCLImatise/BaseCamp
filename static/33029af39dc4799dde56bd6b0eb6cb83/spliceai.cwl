class: CommandLineTool
id: spliceai.cwl
inputs:
- id: i
  doc: '[input]     path to the input VCF file, defaults to standard in'
  type: boolean
  inputBinding:
    prefix: -I
- id: o
  doc: '[output]    path to the output VCF file, defaults to standard out'
  type: boolean
  inputBinding:
    prefix: -O
- id: r
  doc: path to the reference genome fasta file
  type: string
  inputBinding:
    prefix: -R
- id: a
  doc: '"grch37" (GENCODE V24lift37 canonical annotation file in package), "grch38"
    (GENCODE V24 canonical annotation file in package), or path to a similar custom
    gene annotation file'
  type: string
  inputBinding:
    prefix: -A
- id: d
  doc: '[distance]  maximum distance between the variant and gained/lost splice site,
    defaults to 50'
  type: boolean
  inputBinding:
    prefix: -D
- id: m
  doc: '[mask]      mask scores representing annotated acceptor/donor gain and unannotated
    acceptor/donor loss, defaults to 0'
  type: boolean
  inputBinding:
    prefix: -M
outputs: []
cwlVersion: v1.1
baseCommand:
- spliceai
