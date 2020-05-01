#!/usr/bin/env cwl-runner

baseCommand:
- howdesbt
class: CommandLineTool
cwlVersion: v1.0
id: howdesbt
inputs:
- doc: '...'
  id: caagacctatgagtagaacg
  inputBinding:
    position: 0
  type: string
- doc: input files are kmers (by default input files are expected to be fasta or fastq)
  id: k_mersin
  inputBinding:
    prefix: --kmersin
  type: boolean
- doc: name for bloom filter file (by default this is derived from first sequence
    filename)
  id: out
  inputBinding:
    prefix: --out
  type: File
- doc: file containing a list of bloom filters to create; this is used in place of
    the <filename>s on the command line; the file format is described below
  id: list
  inputBinding:
    prefix: --list
  type: File
- doc: name of an existing bloom filter file to extract settings from; that file's
    --k, --hashes, --seed, --modulus, --bits and compression type will be used if
    they are not otherwise specified on the command line
  id: as_per
  inputBinding:
    prefix: --asper
  type: File
- doc: kmer size (number of nucleotides in a kmer) (default is 20)
  id: k
  inputBinding:
    prefix: --k
  type: string
- doc: kmers occuring fewer than N times are left out of the bloom filter; this does
    not apply when --kmersin is used (default is 1)
  id: min
  inputBinding:
    prefix: --min
  type: string
- doc: number of threads to use during kmerization (default is 1)
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: how many hash functions to use for the filter (default is 1)
  id: hashes
  inputBinding:
    prefix: --hashes
  type: string
- doc: the hash function's 56-bit seed
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: ',<number>  both the hash function seeds; the second seed is only used if more
    than one hash function is being used (by default the second seed is the first
    seed plus 1)'
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: set the hash modulus, if larger than the number of bits (by default this is
    the same as the number of bits)
  id: modulus
  inputBinding:
    prefix: --modulus
  type: string
- doc: number of bits in the bloom filter (default is 500000)
  id: bits
  inputBinding:
    prefix: --bits
  type: string
- doc: make the filter with uncompressed bit vector(s) (this is the default)
  id: uncompressed
  inputBinding:
    prefix: --uncompressed
  type: boolean
- doc: make the filter with RRR-compressed bit vector(s)
  id: rrr
  inputBinding:
    prefix: --rrr
  type: boolean
- doc: make the filter with roar-compressed bit vector(s)
  id: roar
  inputBinding:
    prefix: --roar
  type: boolean
- doc: '[=<filename>] write bloom filter stats to a text file (if no filename is given
    this is derived from the bloom filter filename)'
  id: stats
  inputBinding:
    prefix: --stats
  type: boolean
- doc: number of bits to use from each filter; same as 0..<N>
  id: bits
  inputBinding:
    prefix: --bits
  type: string
- doc: remove nodes from the binary tree; remove those for which saturation of determined
    is more than 2 standard deviations below the mean (this is the default)
  id: cull
  inputBinding:
    prefix: --cull
  type: boolean
- doc: sd      remove nodes for which saturation of determined is more than <Z> standard
    deviations below the mean
  id: cull
  inputBinding:
    prefix: --cull
  type: string
- doc: remove nodes for which saturation of determined is less than <S>; e.g. <S>
    can be "0.20" or "20%"
  id: cull
  inputBinding:
    prefix: --cull
  type: string
- doc: keep all nodes of the binary tree
  id: keep_all_nodes
  inputBinding:
    prefix: --keepallnodes
  type: boolean
- doc: (same as --keepallnodes)
  id: no_cull
  inputBinding:
    prefix: --nocull
  type: boolean
- doc: perform the clustering but don't build the tree's nodes (this is the default)
  id: no_build
  inputBinding:
    prefix: --nobuild
  type: boolean
- doc: perform clustering, then build the uncompressed nodes
  id: build
  inputBinding:
    prefix: --build
  type: boolean
- doc: name of topology file to write tree consisting of the filters built (by default
    we derive a name for the resulting topology from the input filename; but by default
    no tree is) written for --simple, as it would be the same as the input tree)
  id: out_tree
  inputBinding:
    prefix: --outtree
  type: File
- doc: create tree nodes as simple bloom filters (this is the default)
  id: simple
  inputBinding:
    prefix: --simple
  type: boolean
- doc: equivalent to --determined,brief --rrr
  id: how_de
  inputBinding:
    prefix: --howde
  type: boolean
- doc: create tree nodes as all/some bloom filters
  id: all_some
  inputBinding:
    prefix: --allsome
  type: boolean
- doc: create tree nodes as determined/how bloom filters
  id: determined
  inputBinding:
    prefix: --determined
  type: boolean
- doc: ',brief   create tree nodes as determined/how, but only store active bits'
  id: determined
  inputBinding:
    prefix: --determined
  type: boolean
- doc: create the nodes as uncompressed bit vector(s) (this is the default)
  id: uncompressed
  inputBinding:
    prefix: --uncompressed
  type: boolean
- doc: create the nodes as rrr-compressed bit vector(s)
  id: rrr
  inputBinding:
    prefix: --rrr
  type: boolean
- doc: create the nodes as roar-compressed bit vector(s)
  id: roar
  inputBinding:
    prefix: --roar
  type: boolean
- doc: fraction of query kmers that must be present in a leaf to be considered a match;
    this must be between 0 and 1; this only applies to query files for which <F> is
    not otherwise specified (by <queryfilename>=<F>) (default is 0.7)
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: adjust reported number of kmers present, compensating for bloom filter false
    positives
  id: adjust
  inputBinding:
    prefix: --adjust
  type: boolean
- doc: sort matched leaves by the number of query kmers present, and report the number
    of kmers present (by default we just report the matched leaves without regard
    to which matches are better)
  id: sort
  inputBinding:
    prefix: --sort
  type: boolean
- doc: disregard internal tree nodes and perform the query only at the leaves
  id: leaf_only
  inputBinding:
    prefix: --leafonly
  type: boolean
- doc: perform the query counting each distinct kmer only once (by default we count
    a query kmer each time it occurs)
  id: distinct_km_ers
  inputBinding:
    prefix: --distinctkmers
  type: boolean
- doc: before searching, check that bloom filter properties are consistent across
    the tree (not needed with --usemanager)
  id: consistency_check
  inputBinding:
    prefix: --consistencycheck
  type: boolean
- doc: just report the number of kmers in each query, and quit
  id: just_count_km_ers
  inputBinding:
    prefix: --justcountkmers
  type: boolean
- doc: report the number of kmers that 'hit', for each query/leaf
  id: count_all_km_er_hits
  inputBinding:
    prefix: --countallkmerhits
  type: boolean
- doc: :nodesexamined report the count of nodes examined for each query (as a comment
    in the output
  id: stat
  inputBinding:
    prefix: --stat
  type: boolean
- doc: report wall time and node i/o time
  id: time
  inputBinding:
    prefix: --time
  type: boolean
- doc: file for query results; if this is not provided, results are written to stdout
  id: out
  inputBinding:
    prefix: --out
  type: File
