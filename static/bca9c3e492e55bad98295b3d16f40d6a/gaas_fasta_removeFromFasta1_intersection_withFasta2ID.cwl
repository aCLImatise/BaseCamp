class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_fasta_removeFromFasta1_intersection_withFasta2ID.pl.cwl
inputs:
- id: fast_a_one
  doc: Fasta file 1. The headers of sequences of this file will be used to compare
    against those to file 2.
  type: string
  inputBinding:
    prefix: --fasta1
- id: fast_a_two
  doc: Fasta file 2. This is the "reference file" in which we will remove sequences
    already existing in file 1.
  type: string
  inputBinding:
    prefix: --fasta2
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
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: my_script_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_fasta_removeFromFasta1_intersection_withFasta2ID.pl
