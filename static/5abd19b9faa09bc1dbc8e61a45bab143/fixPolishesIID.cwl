class: CommandLineTool
id: fixPolishesIID.cwl
inputs:
- id: c
  doc: Read cDNA deflines from c.fasta
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: Read genomic deflines from g.fasta
  type: string
  inputBinding:
    prefix: -g
- id: gff3
  doc: Write output as GFF3
  type: boolean
  inputBinding:
    prefix: -gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- fixPolishesIID
