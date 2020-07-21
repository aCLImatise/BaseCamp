class: CommandLineTool
id: ../../../agat_sp_statistics.pl.cwl
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
- id: when_option_used
  doc: When this option is used, an histogram of distribution of the features will
    be printed in pdf files. (d means distribution, p means plot).
  type: string
  inputBinding:
    prefix: -d
- id: verbose
  doc: Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are
    increasing verbosity.
  type: string
  inputBinding:
    prefix: --verbose
- id: output
  doc: File where will be written the result. If no output file is specified, the
    output will be written to STDOUT.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_statistics.pl
