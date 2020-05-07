class: CommandLineTool
id: create_k_unitigs_large_k.cwl
inputs:
- id: mer
  doc: '*k-mer size'
  type: long
  inputBinding:
    prefix: --mer
- id: nb_mers
  doc: '*Estimated number of distinct k-mers'
  type: string
  inputBinding:
    prefix: --nb-mers
- id: threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: output
  doc: Ouput file (stdout)
  type: File
  inputBinding:
    prefix: --output
- id: quality_threshold
  doc: Count threshold for high-quality mers (2)
  type: string
  inputBinding:
    prefix: --quality-threshold
- id: cont_on_low
  doc: Max length of low quality mer run (0)
  type: string
  inputBinding:
    prefix: --cont-on-low
- id: min_len
  doc: Minimum length of k-unitig to output (k+1)
  type: string
  inputBinding:
    prefix: --min-len
- id: gzip
  doc: Gzip output file. Ignored if -o not given. (false)
  type: boolean
  inputBinding:
    prefix: --gzip
- id: false_positive
  doc: False positive rate in bloom filter (0.01)
  type: string
  inputBinding:
    prefix: --false-positive
- id: load
  doc: Load jellyfish bloom counter
  type: File
  inputBinding:
    prefix: --load
outputs: []
cwlVersion: v1.1
baseCommand:
- create_k_unitigs_large_k
