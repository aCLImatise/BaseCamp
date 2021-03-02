class: CommandLineTool
id: gffGetmRNA.pl.cwl
inputs:
- id: in_genome
  doc: Input a fasta file with the genomic sequences.
  type: File?
  inputBinding:
    prefix: --genome
- id: in_mrna
  doc: Output fasta file with mRNA sequences.
  type: File?
  inputBinding:
    prefix: --mrna
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mrna
  doc: Output fasta file with mRNA sequences.
  type: File?
  outputBinding:
    glob: $(inputs.in_mrna)
hints: []
cwlVersion: v1.1
baseCommand:
- gffGetmRNA.pl
