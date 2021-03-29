class: CommandLineTool
id: lastdb5.cwl
inputs:
- id: in_interpret_sequences_proteins
  doc: ': interpret the sequences as proteins'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_softmask_lowercase_letters
  doc: ': soft-mask lowercase letters (in reference *and* query sequences)'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_seeding_scheme_default
  doc: ': seeding scheme (default: YASS for DNA, else exact-match seeds)'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_number_parallel_threads
  doc: ': number of parallel threads (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_lowercase_simplesequence_options
  doc: ': lowercase & simple-sequence options (default: 03 for -q, else 01)'
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_use_initial_matches
  doc: ': use initial matches starting at every w-th position in each sequence (1)'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_use_positions_sliding
  doc: ': use "minimum" positions in sliding windows of W consecutive positions (1)'
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_strand_reverse_forward
  doc: ': strand: 0=reverse, 1=forward, 2=both (1)'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_volume_size_unlimited
  doc: ': volume size (unlimited)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_format_fastx
  doc: ': input format: fastx, keep, sanger, solexa, illumina (default=fasta)'
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_interpret_sequences_and
  doc: ': interpret the sequences as proteins and append */STOP'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_seed_patterns_match
  doc: ': seed patterns (1=match, 0=anything, @=transition)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_dna_seed_patterns
  doc: ': DNA seed patterns (N=match, n=anything, R=purine match, etc.)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__userdefined_alphabet
  doc: ': user-defined alphabet'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_minimum_limit_initial
  doc: ': minimum limit on initial matches per query position (0)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_maximum_length_buckets
  doc: ': maximum length for buckets'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_use_bucket_length
  doc: ': use max bucket length with memory <= (memory for stored positions) / B (4)'
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_child_table_type
  doc: ': child table type: 0=none, 1=byte-size, 2=short-size, 3=full (0)'
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_just_count_sequences
  doc: ': just count sequences and letters'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_be_verbose_write
  doc: ': be verbose: write messages about what lastdb is doing'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1205--h8b12597_0
cwlVersion: v1.1
baseCommand:
- lastdb5
