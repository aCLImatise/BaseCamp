class: CommandLineTool
id: kmer_filter.cwl
inputs:
- id: rare
  doc: ': turn on filtering based on rare k-mers.'
  type: boolean
  inputBinding:
    prefix: --rare
- id: abundant
  doc: ': turn on filtering based on abundant k-mers.'
  type: boolean
  inputBinding:
    prefix: --abundant
- id: k_len
  doc: ': specify k-mer size (default 15).'
  type: string
  inputBinding:
    prefix: --k-len
- id: max_k_freq
  doc: ': specify the number of times a kmer must occur to be considered abundant
    (default 20,000).'
  type: string
  inputBinding:
    prefix: --max-k-freq
- id: min_lim
  doc: ': specify number of rare kmers occuring in a row required to discard a read
    (default 80% of the k-mer length).'
  type: string
  inputBinding:
    prefix: --min-lim
- id: max_lim
  doc: ': specify number of abundant kmers required to discard a read (default 80%
    of the k-mers in a read).'
  type: string
  inputBinding:
    prefix: --max-lim
- id: normalize
  doc: ': normalize read depth according to k-mer coverage.'
  type: string
  inputBinding:
    prefix: --normalize
- id: write_k_freq
  doc: ': write kmers along with their frequency of occurrence and exit.'
  type: boolean
  inputBinding:
    prefix: --write-k-freq
- id: k_dist
  doc: ': print k-mer frequency distribution and exit.'
  type: boolean
  inputBinding:
    prefix: --k-dist
- id: read_k_freq
  doc: ': read a set of kmers along with their frequencies of occurrence instead of
    reading raw input files.'
  type: File
  inputBinding:
    prefix: --read-k-freq
outputs: []
cwlVersion: v1.1
baseCommand:
- kmer_filter
