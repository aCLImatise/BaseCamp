class: CommandLineTool
id: spades_kmer_estimating.cwl
inputs:
- id: in_km_er
  doc: K-mer length
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_dataset
  doc: Dataset description (in YAML)
  type: string?
  inputBinding:
    prefix: --dataset
- id: in_threads
  doc: '# of threads to use'
  type: string?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spades:3.15.0--h633aebb_0
cwlVersion: v1.1
baseCommand:
- spades-kmer-estimating
