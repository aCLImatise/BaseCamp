class: CommandLineTool
id: SNP_analysis.pl.cwl
inputs:
- id: in_gff
  doc: GFF is an alternative to genbank. Use either one.
  type: File
  inputBinding:
    prefix: -gff
- id: in_or
  doc: -gff <gff3_without_sequence_file>   -fasta  <genome_fasta_file>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SNP_analysis.pl
