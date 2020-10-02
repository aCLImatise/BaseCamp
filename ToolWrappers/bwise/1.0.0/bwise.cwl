class: CommandLineTool
id: bwise.cwl
inputs:
- id: in_input_fasta_pairedend
  doc: "input fasta or (compressed .gz if -c option is != 0)\npaired-end read files.\
    \ Several read files must be\nconcatenated."
  type: long
  inputBinding:
    prefix: -x
- id: in_input_fasta_singleend
  doc: "input fasta or (compressed .gz if -c option is != 0)\nsingle-end read files.\
    \ Several read files must be\nconcatenated."
  type: long
  inputBinding:
    prefix: -u
- id: in_integer_kmers_present
  doc: "an integer, k-mers present strictly less than this\nnumber of times in the\
    \ dataset will be discarded\n(default 2)"
  type: long
  inputBinding:
    prefix: -s
- id: in_integer_minimal_unitig
  doc: "an integer, minimal unitig coverage for first cleaning\n(default 5)"
  type: long
  inputBinding:
    prefix: -S
- id: in_integer_superreads_present
  doc: "an integer, super-reads present strictly less than\nthis number of times will\
    \ be discarded (default 3)"
  type: long
  inputBinding:
    prefix: -p
- id: in_integer_unitigs_less
  doc: "an integer, unitigs with less than S reads mapped is\nfiltred (default 3)"
  type: long
  inputBinding:
    prefix: -P
- id: in_integer_smallest_kmer
  doc: an integer, smallest k-mer size (default 63)
  type: long
  inputBinding:
    prefix: -k
- id: in_integer_largest_kmer
  doc: an integer, largest k-mer size (default 201)
  type: long
  inputBinding:
    prefix: -K
- id: in_anchors_test_mapping
  doc: Anchors to test for mapping (default 1000)
  type: long
  inputBinding:
    prefix: -e
- id: in_anchors_size_default
  doc: Anchors size (default 31)
  type: long
  inputBinding:
    prefix: -a
- id: in_fraction_indexed_allput
  doc: "Fraction of the anchor that are indexed (default all,\nput 10 to index one\
    \ out of 10 anchors)"
  type: long
  inputBinding:
    prefix: -i
- id: in_maximal_ccurence_indexed
  doc: maximal ccurence for an indexed anchor (default 1)
  type: long
  inputBinding:
    prefix: -A
- id: in_missmatch_allowed_mapping
  doc: missmatch allowed in mapping (default 10)
  type: long
  inputBinding:
    prefix: -m
- id: in_greedy_contig_extension
  doc: Greedy contig extension
  type: long
  inputBinding:
    prefix: -g
- id: in_number_cores_used
  doc: number of cores used (default max)
  type: long
  inputBinding:
    prefix: -t
- id: in_path_store_results
  doc: "path to store the results (default = current\ndirectory)"
  type: File
  inputBinding:
    prefix: -o
- id: in_produce_haploid_assembly
  doc: Produce a haploid assembly
  type: string
  inputBinding:
    prefix: -H
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bwise
