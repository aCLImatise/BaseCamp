class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gimme_background.cwl
inputs:
- id: input_sequences_bed
  doc: input sequences (BED or FASTA)
  type: File
  inputBinding:
    prefix: -i
- id: output_format_bed
  doc: output format (BED or FASTA
  type: string
  inputBinding:
    prefix: -f
- id: size_random_sequences
  doc: size of random sequences
  type: long
  inputBinding:
    prefix: -s
- id: number_sequence_generate
  doc: number of sequence to generate
  type: string
  inputBinding:
    prefix: -n
- id: genome_version_type
  doc: genome version (not for type 'random')
  type: string
  inputBinding:
    prefix: -g
- id: order_markov_model
  doc: order of the Markov model (only for type 'random', default 1)
  type: string
  inputBinding:
    prefix: -m
- id: h
  doc: ''
  type: boolean
  inputBinding:
    prefix: -h
- id: file
  doc: outputfile
  type: File
  inputBinding:
    position: 0
- id: type
  doc: type of background sequences to generate (random,genomic,gc,promoter)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- background
