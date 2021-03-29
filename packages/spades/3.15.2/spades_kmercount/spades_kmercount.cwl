class: CommandLineTool
id: spades_kmercount.cwl
inputs:
- id: in_km_er
  doc: K-mer length
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_dataset
  doc: Dataset description (in YAML), input files ignored
  type: string?
  inputBinding:
    prefix: --dataset
- id: in_threads
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: --threads
- id: in_workdir
  doc: Working directory to use
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_bufsize
  doc: Sorting buffer size, per thread
  type: long?
  inputBinding:
    prefix: --bufsize
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.2--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-kmercount
