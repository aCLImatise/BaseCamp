class: CommandLineTool
id: gffGetmRNA.pl.cwl
inputs:
- id: genome
  doc: Input a fasta file with the genomic sequences.
  type: string
  inputBinding:
    prefix: --genome
- id: mrna
  doc: Output fasta file with mRNA sequences.
  type: string
  inputBinding:
    prefix: --mrna
outputs: []
cwlVersion: v1.1
baseCommand:
- gffGetmRNA.pl
