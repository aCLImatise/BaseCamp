class: CommandLineTool
id: howdesbt.cwl
inputs:
- id: caagacctatgagtagaacg
  doc: '...'
  type: string
  inputBinding:
    position: 0
- id: k_mersin
  doc: input files are kmers (by default input files are expected to be fasta or fastq)
  type: boolean
  inputBinding:
    prefix: --kmersin
- id: out
  doc: name for bloom filter file (by default this is derived from first sequence
    filename)
  type: File
  inputBinding:
    prefix: --out
- id: list
  doc: file containing a list of bloom filters to create; this is used in place of
    the <filename>s on the command line; the file format is described below
  type: File
  inputBinding:
    prefix: --list
- id: as_per
  doc: name of an existing bloom filter file to extract settings from; that file's
    --k, --hashes, --seed, --modulus, --bits and compression type will be used if
    they are not otherwise specified on the command line
  type: File
  inputBinding:
    prefix: --asper
- id: k
  doc: kmer size (number of nucleotides in a kmer) (default is 20)
  type: string
  inputBinding:
    prefix: --k
- id: min
  doc: kmers occuring fewer than N times are left out of the bloom filter; this does
    not apply when --kmersin is used (default is 1)
  type: string
  inputBinding:
    prefix: --min
- id: threads
  doc: number of threads to use during kmerization (default is 1)
  type: string
  inputBinding:
    prefix: --threads
- id: hashes
  doc: how many hash functions to use for the filter (default is 1)
  type: string
  inputBinding:
    prefix: --hashes
- id: seed
  doc: the hash function's 56-bit seed
  type: string
  inputBinding:
    prefix: --seed
- id: seed
  doc: ',<number>  both the hash function seeds; the second seed is only used if more
    than one hash function is being used (by default the second seed is the first
    seed plus 1)'
  type: string
  inputBinding:
    prefix: --seed
- id: modulus
  doc: set the hash modulus, if larger than the number of bits (by default this is
    the same as the number of bits)
  type: string
  inputBinding:
    prefix: --modulus
- id: bits
  doc: number of bits in the bloom filter (default is 500000)
  type: string
  inputBinding:
    prefix: --bits
- id: uncompressed
  doc: make the filter with uncompressed bit vector(s) (this is the default)
  type: boolean
  inputBinding:
    prefix: --uncompressed
- id: rrr
  doc: make the filter with RRR-compressed bit vector(s)
  type: boolean
  inputBinding:
    prefix: --rrr
- id: roar
  doc: make the filter with roar-compressed bit vector(s)
  type: boolean
  inputBinding:
    prefix: --roar
- id: stats
  doc: '[=<filename>] write bloom filter stats to a text file (if no filename is given
    this is derived from the bloom filter filename)'
  type: boolean
  inputBinding:
    prefix: --stats
- id: bits
  doc: number of bits to use from each filter; same as 0..<N>
  type: string
  inputBinding:
    prefix: --bits
- id: cull
  doc: remove nodes from the binary tree; remove those for which saturation of determined
    is more than 2 standard deviations below the mean (this is the default)
  type: boolean
  inputBinding:
    prefix: --cull
- id: cull
  doc: sd      remove nodes for which saturation of determined is more than <Z> standard
    deviations below the mean
  type: string
  inputBinding:
    prefix: --cull
- id: cull
  doc: remove nodes for which saturation of determined is less than <S>; e.g. <S>
    can be "0.20" or "20%"
  type: string
  inputBinding:
    prefix: --cull
- id: keep_all_nodes
  doc: keep all nodes of the binary tree
  type: boolean
  inputBinding:
    prefix: --keepallnodes
- id: no_cull
  doc: (same as --keepallnodes)
  type: boolean
  inputBinding:
    prefix: --nocull
- id: no_build
  doc: perform the clustering but don't build the tree's nodes (this is the default)
  type: boolean
  inputBinding:
    prefix: --nobuild
- id: build
  doc: perform clustering, then build the uncompressed nodes
  type: boolean
  inputBinding:
    prefix: --build
- id: out_tree
  doc: name of topology file to write tree consisting of the filters built (by default
    we derive a name for the resulting topology from the input filename; but by default
    no tree is) written for --simple, as it would be the same as the input tree)
  type: File
  inputBinding:
    prefix: --outtree
- id: simple
  doc: create tree nodes as simple bloom filters (this is the default)
  type: boolean
  inputBinding:
    prefix: --simple
- id: how_de
  doc: equivalent to --determined,brief --rrr
  type: boolean
  inputBinding:
    prefix: --howde
- id: all_some
  doc: create tree nodes as all/some bloom filters
  type: boolean
  inputBinding:
    prefix: --allsome
- id: determined
  doc: create tree nodes as determined/how bloom filters
  type: boolean
  inputBinding:
    prefix: --determined
- id: determined
  doc: ',brief   create tree nodes as determined/how, but only store active bits'
  type: boolean
  inputBinding:
    prefix: --determined
- id: uncompressed
  doc: create the nodes as uncompressed bit vector(s) (this is the default)
  type: boolean
  inputBinding:
    prefix: --uncompressed
- id: rrr
  doc: create the nodes as rrr-compressed bit vector(s)
  type: boolean
  inputBinding:
    prefix: --rrr
- id: roar
  doc: create the nodes as roar-compressed bit vector(s)
  type: boolean
  inputBinding:
    prefix: --roar
- id: threshold
  doc: fraction of query kmers that must be present in a leaf to be considered a match;
    this must be between 0 and 1; this only applies to query files for which <F> is
    not otherwise specified (by <queryfilename>=<F>) (default is 0.7)
  type: string
  inputBinding:
    prefix: --threshold
- id: adjust
  doc: adjust reported number of kmers present, compensating for bloom filter false
    positives
  type: boolean
  inputBinding:
    prefix: --adjust
- id: sort
  doc: sort matched leaves by the number of query kmers present, and report the number
    of kmers present (by default we just report the matched leaves without regard
    to which matches are better)
  type: boolean
  inputBinding:
    prefix: --sort
- id: leaf_only
  doc: disregard internal tree nodes and perform the query only at the leaves
  type: boolean
  inputBinding:
    prefix: --leafonly
- id: distinct_km_ers
  doc: perform the query counting each distinct kmer only once (by default we count
    a query kmer each time it occurs)
  type: boolean
  inputBinding:
    prefix: --distinctkmers
- id: consistency_check
  doc: before searching, check that bloom filter properties are consistent across
    the tree (not needed with --usemanager)
  type: boolean
  inputBinding:
    prefix: --consistencycheck
- id: just_count_km_ers
  doc: just report the number of kmers in each query, and quit
  type: boolean
  inputBinding:
    prefix: --justcountkmers
- id: count_all_km_er_hits
  doc: report the number of kmers that 'hit', for each query/leaf
  type: boolean
  inputBinding:
    prefix: --countallkmerhits
- id: stat
  doc: :nodesexamined report the count of nodes examined for each query (as a comment
    in the output
  type: boolean
  inputBinding:
    prefix: --stat
- id: time
  doc: report wall time and node i/o time
  type: boolean
  inputBinding:
    prefix: --time
- id: out
  doc: file for query results; if this is not provided, results are written to stdout
  type: File
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- howdesbt
