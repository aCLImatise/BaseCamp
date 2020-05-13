class: CommandLineTool
id: stride_fmwalk.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: string
  inputBinding:
    prefix: --prefix
- id: outfile
  doc: 'write the corrected reads to FILE (default: READSFILE.ec.fa)'
  type: File
  inputBinding:
    prefix: --outfile
- id: threads
  doc: 'use NUM threads for the computation (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: algorithm
  doc: 'specify the walking algorithm. STR must be hybrid (merge and kmerize) or merge.
    (default: hybrid)'
  type: string
  inputBinding:
    prefix: --algorithm
- id: km_er_size
  doc: 'The length of the kmer to use. (default: 31)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: km_er_threshold
  doc: 'Attempt to correct kmers that are seen less than N times. (default: 3)'
  type: string
  inputBinding:
    prefix: --kmer-threshold
- id: max_leaves
  doc: 'Number of maximum leaves in the search tree (default: 32)'
  type: string
  inputBinding:
    prefix: --max-leaves
- id: max_insert_size
  doc: 'the maximum insert size (i.e. search depth) (deault: 400)'
  type: string
  inputBinding:
    prefix: --max-insertsize
- id: min_overlap
  doc: 'the min overlap (default: 81)'
  type: string
  inputBinding:
    prefix: --min-overlap
- id: max_overlap
  doc: 'the max overlap (default: avg read length*0.9)'
  type: string
  inputBinding:
    prefix: --max-overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- stride
- fmwalk
