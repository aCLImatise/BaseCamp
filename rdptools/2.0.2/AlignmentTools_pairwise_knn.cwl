class: CommandLineTool
id: AlignmentTools_pairwise_knn.cwl
inputs:
- id: k
  doc: K-nearest neighbors to return. (default = 1)
  type: string
  inputBinding:
    prefix: -k
- id: mode
  doc: Alignment mode {global, glocal, local, overlap, overlap_trimmed} (default=
    glocal)
  type: string
  inputBinding:
    prefix: --mode
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
- id: word_size
  doc: The word size used to find closest targets during prefilter. (default 4 for
    protein, 8 for nucleotide)
  type: string
  inputBinding:
    prefix: --word-size
outputs: []
cwlVersion: v1.1
baseCommand:
- AlignmentTools
- pairwise-knn
