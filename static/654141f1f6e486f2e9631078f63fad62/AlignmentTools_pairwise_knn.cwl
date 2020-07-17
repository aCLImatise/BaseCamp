class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/AlignmentTools_pairwise_knn.cwl
inputs:
- id: knearest_neighbors_return
  doc: K-nearest neighbors to return. (default = 1)
  type: string
  inputBinding:
    prefix: -k
- id: mode
  doc: Alignment mode {global, glocal, local, overlap, overlap_trim} (default= glocal)
  type: string
  inputBinding:
    prefix: --mode
- id: remove_ns_query
  doc: Remove Ns from the query. Default is false
  type: boolean
  inputBinding:
    prefix: -n
- id: out
  doc: Redirect output to file instead of stdout
  type: string
  inputBinding:
    prefix: --out
- id: prefilter
  doc: The top p closest targets from kmer prefilter step. Set p=0 to disable the
    prefilter step. (default = 10)
  type: string
  inputBinding:
    prefix: --prefilter
- id: threads
  doc: '#Threads to use. This process is CPU intensive. (default 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: word_size
  doc: The word size used to find closest targets during prefilter. (default 4 for
    protein, 8 for nucleotide)
  type: string
  inputBinding:
    prefix: --word-size
- id: pairwise_knn
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- pairwise-knn
