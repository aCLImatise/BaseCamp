class: CommandLineTool
id: ../../../howdesbt.cwl
inputs:
- id: in_k_mersin
  doc: "input files are kmers\n(by default input files are expected to be fasta or\
    \ fastq)"
  type: boolean
  inputBinding:
    prefix: --kmersin
- id: in_out
  doc: "name for bloom filter file\n(by default this is derived from first sequence\
    \ filename)"
  type: File
  inputBinding:
    prefix: --out
- id: in_list
  doc: "file containing a list of bloom filters to create; this is\nused in place\
    \ of the <filename>s on the command line; the\nfile format is described below"
  type: File
  inputBinding:
    prefix: --list
- id: in_as_per
  doc: "name of an existing bloom filter file to extract settings\nfrom; that file's\
    \ --k, --hashes, --seed, --modulus,\n--bits and compression type will be used\
    \ if they are not\notherwise specified on the command line"
  type: File
  inputBinding:
    prefix: --asper
- id: in_kmer_size_number
  doc: "kmer size (number of nucleotides in a kmer)\n(default is 20)"
  type: long
  inputBinding:
    prefix: --k
- id: in_min
  doc: "kmers occuring fewer than N times are left out of the\nbloom filter; this\
    \ does not apply when --kmersin is used\n(default is 1)"
  type: long
  inputBinding:
    prefix: --min
- id: in_threads
  doc: "number of threads to use during kmerization\n(default is 1)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_hashes
  doc: "how many hash functions to use for the filter\n(default is 1)"
  type: long
  inputBinding:
    prefix: --hashes
- id: in_modulus
  doc: "set the hash modulus, if larger than the number of bits\n(by default this\
    \ is the same as the number of bits)"
  type: long
  inputBinding:
    prefix: --modulus
- id: in_bits
  doc: "number of bits in the bloom filter\n(default is 500000)"
  type: long
  inputBinding:
    prefix: --bits
- id: in_uncompressed
  doc: "make the filter with uncompressed bit vector(s)\n(this is the default)"
  type: boolean
  inputBinding:
    prefix: --uncompressed
- id: in_rrr
  doc: make the filter with RRR-compressed bit vector(s)
  type: boolean
  inputBinding:
    prefix: --rrr
- id: in_roar
  doc: make the filter with roar-compressed bit vector(s)
  type: boolean
  inputBinding:
    prefix: --roar
- id: in_stats
  doc: "[=<filename>] write bloom filter stats to a text file\n(if no filename is\
    \ given this is derived from the bloom\nfilter filename)"
  type: boolean
  inputBinding:
    prefix: --stats
- id: in_tree
  doc: same as --out=<filename>
  type: File
  inputBinding:
    prefix: --tree
- id: in_node_name
  doc: "filename template for internal tree nodes\nthis must contain the substring\
    \ {number}\n(by default this is derived from the list filename)"
  type: long
  inputBinding:
    prefix: --nodename
- id: in_keep_all_nodes
  doc: keep all nodes of the binary tree
  type: boolean
  inputBinding:
    prefix: --keepallnodes
- id: in_no_cull
  doc: (same as --keepallnodes)
  type: boolean
  inputBinding:
    prefix: --nocull
- id: in_no_build
  doc: "perform the clustering but don't build the tree's nodes\n(this is the default)"
  type: boolean
  inputBinding:
    prefix: --nobuild
- id: in_build
  doc: perform clustering, then build the uncompressed nodes
  type: boolean
  inputBinding:
    prefix: --build
- id: in_out_tree
  doc: "name of topology file to write tree consisting of the\nfilters built\n(by\
    \ default we derive a name for the resulting topology\nfrom the input filename;\
    \ but by default no tree is)\nwritten for --simple, as it would be the same as\
    \ the\ninput tree)"
  type: File
  inputBinding:
    prefix: --outtree
- id: in_simple
  doc: "create tree nodes as simple bloom filters\n(this is the default)"
  type: boolean
  inputBinding:
    prefix: --simple
- id: in_how_de
  doc: equivalent to --determined,brief --rrr
  type: boolean
  inputBinding:
    prefix: --howde
- id: in_all_some
  doc: create tree nodes as all/some bloom filters
  type: boolean
  inputBinding:
    prefix: --allsome
- id: in_threshold
  doc: "fraction of query kmers that must be present in a leaf\nto be considered a\
    \ match; this must be between 0 and 1;\nthis only applies to query files for which\
    \ <F> is not\notherwise specified (by <queryfilename>=<F>)\n(default is 0.7)"
  type: double
  inputBinding:
    prefix: --threshold
- id: in_adjust
  doc: "adjust reported number of kmers present, compensating\nfor bloom filter false\
    \ positives"
  type: boolean
  inputBinding:
    prefix: --adjust
- id: in_sort
  doc: "sort matched leaves by the number of query kmers present,\nand report the\
    \ number of kmers present\n(by default we just report the matched leaves without\n\
    regard to which matches are better)"
  type: boolean
  inputBinding:
    prefix: --sort
- id: in_leaf_only
  doc: "disregard internal tree nodes and perform the query only\nat the leaves"
  type: boolean
  inputBinding:
    prefix: --leafonly
- id: in_distinct_km_ers
  doc: "perform the query counting each distinct kmer only once\n(by default we count\
    \ a query kmer each time it occurs)"
  type: boolean
  inputBinding:
    prefix: --distinctkmers
- id: in_consistency_check
  doc: "before searching, check that bloom filter properties are\nconsistent across\
    \ the tree\n(not needed with --usemanager)"
  type: boolean
  inputBinding:
    prefix: --consistencycheck
- id: in_just_count_km_ers
  doc: just report the number of kmers in each query, and quit
  type: boolean
  inputBinding:
    prefix: --justcountkmers
- id: in_count_all_km_er_hits
  doc: report the number of kmers that 'hit', for each
  type: boolean
  inputBinding:
    prefix: --countallkmerhits
- id: in_time
  doc: report wall time and node i/o time
  type: boolean
  inputBinding:
    prefix: --time
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tree
  doc: same as --out=<filename>
  type: File
  outputBinding:
    glob: $(inputs.in_tree)
cwlVersion: v1.1
baseCommand:
- howdesbt
