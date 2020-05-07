class: CommandLineTool
id: spades_kmercount.cwl
inputs:
- id: km_er
  doc: K-mer length
  type: string
  inputBinding:
    prefix: --kmer
- id: dataset
  doc: Dataset description (in YAML), input files ignored
  type: string
  inputBinding:
    prefix: --dataset
- id: threads
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: --threads
- id: workdir
  doc: Working directory to use
  type: string
  inputBinding:
    prefix: --workdir
- id: bufsize
  doc: Sorting buffer size, per thread
  type: string
  inputBinding:
    prefix: --bufsize
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-kmercount
