class: CommandLineTool
id: gimme_background.cwl
inputs:
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
- id: i
  doc: input sequences (BED or FASTA)
  type: File
  inputBinding:
    prefix: -i
- id: f
  doc: output format (BED or FASTA
  type: string
  inputBinding:
    prefix: -f
- id: s
  doc: size of random sequences
  type: long
  inputBinding:
    prefix: -s
- id: n
  doc: number of sequence to generate
  type: string
  inputBinding:
    prefix: -n
- id: g
  doc: genome version (not for type 'random')
  type: string
  inputBinding:
    prefix: -g
- id: m
  doc: order of the Markov model (only for type 'random', default 1)
  type: string
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- gimme
- background
