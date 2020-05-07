class: CommandLineTool
id: SNP_analysis.pl.cwl
inputs:
- id: gff
  doc: -fasta  <genome_fasta_file>
  type: string
  inputBinding:
    prefix: -gff
outputs: []
cwlVersion: v1.1
baseCommand:
- SNP_analysis.pl
