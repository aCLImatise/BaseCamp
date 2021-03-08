class: CommandLineTool
id: mash_sketch.cwl
inputs:
- id: in_parallelism_many_threads
  doc: Parallelism. This many threads will be spawned for processing. [1]
  type: long?
  inputBinding:
    prefix: -p
- id: in_list_input_lines
  doc: "List input. Lines in each <input> specify paths to sequence files,\none per\
    \ line."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_output_prefix_file
  doc: "Output prefix (first input file used if unspecified). The suffix\n'.msh' will\
    \ be appended."
  type: File?
  inputBinding:
    prefix: -o
- id: in_id_field_id
  doc: ID field for sketch of reads (instead of first sequence ID).
  type: File?
  inputBinding:
    prefix: -I
- id: in_comment_sketch_reads
  doc: Comment for a sketch of reads (instead of first sequence comment).
  type: File?
  inputBinding:
    prefix: -C
- id: in_kmer_size_hashes
  doc: "K-mer size. Hashes will be based on strings of this many\nnucleotides. Canonical\
    \ nucleotides are used by default (see\nAlphabet options below). (1-32) [21]"
  type: long?
  inputBinding:
    prefix: -k
- id: in_sketch_size_sketch
  doc: "Sketch size. Each sketch will have at most this many non-redundant\nmin-hashes.\
    \ [1000]"
  type: long?
  inputBinding:
    prefix: -s
- id: in_sketch_individual_sequences
  doc: "Sketch individual sequences, rather than whole files, e.g. for\nmulti-fastas\
    \ of single-chromosome genomes or pair-wise gene\ncomparisons."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_seed_provide_hash
  doc: Seed to provide to the hash function. (0-4294967296) [42]
  type: long?
  inputBinding:
    prefix: -S
- id: in_probability_threshold_size
  doc: "Probability threshold for warning about low k-mer size. (0-1)\n[0.01]"
  type: long?
  inputBinding:
    prefix: -w
- id: in_input_read_set
  doc: Input is a read set. See Reads options below. Incompatible with -i.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_use_bloom_filter
  doc: "Use a Bloom filter of this size (raw bytes or with K/M/G/T) to\nfilter out\
    \ unique k-mers. This is useful if exact filtering with -m\nuses too much memory.\
    \ However, some unique k-mers may pass\nerroneously, and copies cannot be counted\
    \ beyond 2. Implies -r."
  type: long?
  inputBinding:
    prefix: -b
- id: in_minimum_copies_kmer
  doc: "Minimum copies of each k-mer required to pass noise filter for\nreads. Implies\
    \ -r. [1]"
  type: long?
  inputBinding:
    prefix: -m
- id: in_target_coverage_sketching
  doc: "Target coverage. Sketching will conclude if this coverage is\nreached before\
    \ the end of the input file (estimated by average\nk-mer multiplicity). Implies\
    \ -r."
  type: long?
  inputBinding:
    prefix: -c
- id: in_genome_size_raw
  doc: "Genome size (raw bases or with K/M/G/T). If specified, will be used\nfor p-value\
    \ calculation instead of an estimated size from k-mer\ncontent. Implies -r."
  type: long?
  inputBinding:
    prefix: -g
- id: in_preserve_strand_default
  doc: "Preserve strand (by default, strand is ignored by using canonical\nDNA k-mers,\
    \ which are alphabetical minima of forward-reverse\npairs). Implied if an alphabet\
    \ is specified with -a or -z."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_use_acid_az
  doc: Use amino acid alphabet (A-Z, except BJOUXZ). Implies -n, -k 9.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_alphabet_base_hashes
  doc: "Alphabet to base hashes on (case ignored by default; see -Z).\nK-mers with\
    \ other characters will be ignored. Implies -n."
  type: string?
  inputBinding:
    prefix: -z
- id: in_preserve_case_ignored
  doc: "Preserve case in k-mers and alphabet (case is ignored by default).\nSequence\
    \ letters whose case is not in the current alphabet will be\nskipped when sketching.\n"
  type: boolean?
  inputBinding:
    prefix: -Z
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mash:2.3--ha61e061_0
cwlVersion: v1.1
baseCommand:
- mash
- sketch
