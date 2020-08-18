class: CommandLineTool
id: ../../../gaas_fasta_bionano_filter_not_scaffolded_part.pl.cwl
inputs:
- id: fast_a_one
  doc: Fasta file 1. The headers of sequences of this file will be used to compare
    against those to file 2.
  type: string
  inputBinding:
    prefix: --fasta1
- id: agp
  doc: This is a file containing the headers of sequence to be removed. Only one ID
    per line. Header should be identical at 100% to be removed.
  type: string
  inputBinding:
    prefix: --agp
- id: _output_
  doc: ', --output , --out or --outfile Output fasta file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
- id: my_script_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_bionano_filter_not_scaffolded_part.pl
