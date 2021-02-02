class: CommandLineTool
id: agat_sp_statistics.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File
  inputBinding:
    prefix: --gff
- id: in_gs
  doc: "This option inform about the genome size in oder to compute more\nstatistics.\
    \ You can give the size in Nucleotide or directly the\nfasta file."
  type: long
  inputBinding:
    prefix: --gs
- id: in_when_option_used
  doc: "When this option is used, an histogram of distribution of the\nfeatures will\
    \ be printed in pdf files. (d means distribution, p\nmeans plot)."
  type: string
  inputBinding:
    prefix: -d
- id: in_verbose
  doc: "Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2\nand 3 are\
    \ increasing verbosity."
  type: long
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: "File where will be written the result. If no output file is\nspecified, the\
    \ output will be written to STDOUT."
  type: File
  inputBinding:
    prefix: --output
- id: in_agat_sp_statistics_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "File where will be written the result. If no output file is\nspecified, the\
    \ output will be written to STDOUT."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- agat_sp_statistics.pl
