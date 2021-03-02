class: CommandLineTool
id: smartdenovo.pl.cwl
inputs:
- id: in_output_prefix
  doc: output prefix [wtasm]
  type: string?
  inputBinding:
    prefix: -p
- id: in_engine_overlaper_overlapperdmo
  doc: engine of overlaper, compressed kmer overlapper(zmo), dot matrix overlapper(dmo),
    [dmo]
  type: string?
  inputBinding:
    prefix: -e
- id: in_number_of_threads
  doc: number of threads [8]
  type: long?
  inputBinding:
    prefix: -t
- id: in_kmer_length_overlapping
  doc: "k-mer length for overlapping [16]\nfor large genome as human, please use 17"
  type: long?
  inputBinding:
    prefix: -k
- id: in_min_read_length
  doc: min read length [5000]
  type: long?
  inputBinding:
    prefix: -J
- id: in_generate_consensus
  doc: generate consensus, [0]
  type: long?
  inputBinding:
    prefix: -c
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_reads_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smartdenovo.pl
