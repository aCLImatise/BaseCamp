class: CommandLineTool
id: ../../../fixPolishesIID.cwl
inputs:
- id: read_cdna_deflines
  doc: Read cDNA deflines from c.fasta
  type: string
  inputBinding:
    prefix: -c
- id: read_genomic_deflines
  doc: Read genomic deflines from g.fasta
  type: string
  inputBinding:
    prefix: -g
- id: gff_three
  doc: Write output as GFF3
  type: boolean
  inputBinding:
    prefix: -gff3
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_4
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fixPolishesIID
