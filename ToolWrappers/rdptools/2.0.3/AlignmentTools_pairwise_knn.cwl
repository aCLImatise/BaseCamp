class: CommandLineTool
id: AlignmentTools_pairwise_knn.cwl
inputs:
- id: in_knearest_neighbors_return
  doc: K-nearest neighbors to return. (default = 1)
  type: long
  inputBinding:
    prefix: -k
- id: in_mode
  doc: "Alignment mode {global, glocal, local, overlap,\noverlap_trim} (default= glocal)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_remove_ns_query
  doc: Remove Ns from the query. Default is false
  type: boolean
  inputBinding:
    prefix: -n
- id: in_out
  doc: Redirect output to file instead of stdout
  type: File
  inputBinding:
    prefix: --out
- id: in_prefilter
  doc: "The top p closest targets from kmer prefilter\nstep. Set p=0 to disable the\
    \ prefilter step.\n(default = 10)"
  type: long
  inputBinding:
    prefix: --prefilter
- id: in_threads
  doc: "#Threads to use. This process is CPU intensive.\n(default 1)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_word_size
  doc: "The word size used to find closest targets during\nprefilter. (default 4 for\
    \ protein, 8 for\nnucleotide)\n"
  type: long
  inputBinding:
    prefix: --word-size
- id: in_pairwise_knn
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_query_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_dbfile
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Redirect output to file instead of stdout
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- pairwise-knn
