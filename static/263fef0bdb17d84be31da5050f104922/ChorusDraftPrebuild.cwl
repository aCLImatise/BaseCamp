class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ChorusDraftPrebuild.cwl
inputs:
- id: input
  doc: Fasta format input file contains short sequences
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: 'Fasta format output file with combined long sequences for speeding up oligo
    search. (default: output.fa)'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- ChorusDraftPrebuild
