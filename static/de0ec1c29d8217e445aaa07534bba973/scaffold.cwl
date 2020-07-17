class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scaffold.cwl
inputs:
- id: out
  doc: (=out)                   output directory
  type: string
  inputBinding:
    prefix: --out
- id: num_threads
  doc: (=0)             number of threads
  type: string
  inputBinding:
    prefix: --num_threads
- id: seed_km_er
  doc: (=30)              seed kmer size for alignment
  type: string
  inputBinding:
    prefix: --seed_kmer
- id: min_contig
  doc: (=200)            min size of contig
  type: string
  inputBinding:
    prefix: --min_contig
- id: similar
  doc: (=0.95)              similarity for alignment
  type: string
  inputBinding:
    prefix: --similar
- id: min_pairs
  doc: (=3)               minimum number of pairs
  type: string
  inputBinding:
    prefix: --min_pairs
- id: reads_lib_one_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads_lib_two_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- scaffold
