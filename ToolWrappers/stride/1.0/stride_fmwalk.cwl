class: CommandLineTool
id: stride_fmwalk.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: File
  inputBinding:
    prefix: --prefix
- id: in_outfile
  doc: 'write the corrected reads to FILE (default: READSFILE.ec.fa)'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_threads
  doc: 'use NUM threads for the computation (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_algorithm
  doc: 'specify the walking algorithm. STR must be hybrid (merge and kmerize) or merge.
    (default: hybrid)'
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_km_er_size
  doc: 'The length of the kmer to use. (default: 31)'
  type: long
  inputBinding:
    prefix: --kmer-size
- id: in_km_er_threshold
  doc: 'Attempt to correct kmers that are seen less than N times. (default: 3)'
  type: long
  inputBinding:
    prefix: --kmer-threshold
- id: in_max_leaves
  doc: 'Number of maximum leaves in the search tree (default: 32)'
  type: long
  inputBinding:
    prefix: --max-leaves
- id: in_max_insert_size
  doc: 'the maximum insert size (i.e. search depth) (deault: 400)'
  type: long
  inputBinding:
    prefix: --max-insertsize
- id: in_min_overlap
  doc: 'the min overlap (default: 81)'
  type: long
  inputBinding:
    prefix: --min-overlap
- id: in_max_overlap
  doc: 'the max overlap (default: avg read length*0.9)'
  type: long
  inputBinding:
    prefix: --max-overlap
- id: in_stride
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fm_index_walk
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stride
- fmwalk
