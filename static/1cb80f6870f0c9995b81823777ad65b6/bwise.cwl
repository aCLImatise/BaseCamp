class: CommandLineTool
id: ../../../bwise.cwl
inputs:
- id: input_fasta_pairedend
  doc: input fasta or (compressed .gz if -c option is != 0) paired-end read files.
    Several read files must be concatenated.
  type: string
  inputBinding:
    prefix: -x
- id: input_fasta_singleend
  doc: input fasta or (compressed .gz if -c option is != 0) single-end read files.
    Several read files must be concatenated.
  type: string
  inputBinding:
    prefix: -u
- id: integer_kmers_present
  doc: an integer, k-mers present strictly less than this number of times in the dataset
    will be discarded (default 2)
  type: string
  inputBinding:
    prefix: -s
- id: integer_minimal_unitig
  doc: an integer, minimal unitig coverage for first cleaning (default 5)
  type: string
  inputBinding:
    prefix: -S
- id: integer_superreads_present
  doc: an integer, super-reads present strictly less than this number of times will
    be discarded (default 3)
  type: string
  inputBinding:
    prefix: -p
- id: integer_unitigs_mapped
  doc: an integer, unitigs with less than S reads mapped is filtred (default 3)
  type: string
  inputBinding:
    prefix: -P
- id: integer_smallest_kmer
  doc: an integer, smallest k-mer size (default 63)
  type: string
  inputBinding:
    prefix: -k
- id: integer_largest_kmer
  doc: an integer, largest k-mer size (default 201)
  type: string
  inputBinding:
    prefix: -K
- id: anchors_test_mapping
  doc: Anchors to test for mapping (default 1000)
  type: string
  inputBinding:
    prefix: -e
- id: anchors_size_default
  doc: Anchors size (default 31)
  type: string
  inputBinding:
    prefix: -a
- id: fraction_anchor_indexed
  doc: Fraction of the anchor that are indexed (default all, put 10 to index one out
    of 10 anchors)
  type: string
  inputBinding:
    prefix: -i
- id: maximal_ccurence_indexed
  doc: maximal ccurence for an indexed anchor (default 1)
  type: long
  inputBinding:
    prefix: -A
- id: missmatch_allowed_mapping
  doc: missmatch allowed in mapping (default 10)
  type: string
  inputBinding:
    prefix: -m
- id: greedy_contig_extension
  doc: Greedy contig extension
  type: string
  inputBinding:
    prefix: -g
- id: number_cores_used
  doc: number of cores used (default max)
  type: string
  inputBinding:
    prefix: -t
- id: path_store_default
  doc: path to store the results (default = current directory)
  type: string
  inputBinding:
    prefix: -o
- id: produce_haploid_assembly
  doc: Produce a haploid assembly
  type: string
  inputBinding:
    prefix: -H
outputs: []
cwlVersion: v1.1
baseCommand:
- bwise
