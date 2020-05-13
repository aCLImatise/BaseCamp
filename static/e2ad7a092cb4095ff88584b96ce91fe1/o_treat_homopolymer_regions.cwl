class: CommandLineTool
id: o_treat_homopolymer_regions.cwl
inputs:
- id: input_alignment
  doc: align2first output (.paf file)
  type: string
  inputBinding:
    prefix: --input-alignment
- id: output_fast_a
  doc: Output FASTA file to store homopolymer-treated sequences
  type: string
  inputBinding:
    prefix: --output-fasta
- id: log
  doc: Log file. Default, STDOUT.
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- o-treat-homopolymer-regions
