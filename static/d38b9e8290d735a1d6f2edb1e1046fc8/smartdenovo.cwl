class: CommandLineTool
id: ../../../smartdenovo.pl.cwl
inputs:
- id: output_prefix
  doc: output prefix [wtasm]
  type: string
  inputBinding:
    prefix: -p
- id: engine_overlaper_compressed
  doc: engine of overlaper, compressed kmer overlapper(zmo), dot matrix overlapper(dmo),
    [dmo]
  type: string
  inputBinding:
    prefix: -e
- id: number_of_threads
  doc: number of threads [8]
  type: long
  inputBinding:
    prefix: -t
- id: kmer_length_use
  doc: k-mer length for overlapping [16] for large genome as human, please use 17
  type: long
  inputBinding:
    prefix: -k
- id: min_read_length
  doc: min read length [5000]
  type: long
  inputBinding:
    prefix: -J
- id: generate_consensus
  doc: generate consensus, [0]
  type: long
  inputBinding:
    prefix: -c
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- smartdenovo.pl
