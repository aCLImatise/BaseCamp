class: CommandLineTool
id: ../../../agat_sp_functional_statistics.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: gs
  doc: This option inform about the genome size in oder to compute more statistics.
    You can give the size in Nucleotide or directly the fasta file.
  type: string
  inputBinding:
    prefix: --gs
- id: output
  doc: File where will be written the result. If no output file is specified, the
    output will be written to STDOUT.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_functional_statistics.pl
