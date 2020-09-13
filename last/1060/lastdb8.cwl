class: CommandLineTool
id: ../../../lastdb8.cwl
inputs:
- id: in_interpret_sequences_proteins
  doc: ': interpret the sequences as proteins'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_repeatmarking_options_default
  doc: ': repeat-marking options (default=10)'
  type: boolean
  inputBinding:
    prefix: -R
- id: in_softmask_lowercase_letters
  doc: ': soft-mask lowercase letters (in reference *and* query sequences)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_seeding_scheme_default
  doc: ': seeding scheme (default: YASS for DNA, else exact-match seeds)'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_use_initial_matches
  doc: ': use initial matches starting at every w-th position in each sequence (1)'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_use_positions_sliding
  doc: ': use "minimum" positions in sliding windows of W consecutive positions (1)'
  type: boolean
  inputBinding:
    prefix: -W
- id: in_strand_reverse_forward
  doc: ': strand: 0=reverse, 1=forward, 2=both (1)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_volume_size_unlimited
  doc: ': volume size (unlimited)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_input_format_fasta
  doc: ": input format: 0=fasta or fastq-ignore,\n1=fastq-sanger, 2=fastq-solexa,\
    \ 3=fastq-illumina (fasta)"
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_number_parallel_threads
  doc: ': number of parallel threads (1)'
  type: boolean
  inputBinding:
    prefix: -P
- id: in__seed_pattern
  doc: ': seed pattern'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__userdefined_alphabet
  doc: ': user-defined alphabet'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_minimum_limit_initial
  doc: ': minimum limit on initial matches per query position (0)'
  type: boolean
  inputBinding:
    prefix: -i
- id: in__bucket_depth
  doc: ': bucket depth'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_child_table_type
  doc: ': child table type: 0=none, 1=byte-size, 2=short-size, 3=full (0)'
  type: boolean
  inputBinding:
    prefix: -C
- id: in_just_count_sequences
  doc: ': just count sequences and letters'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_verbose_write_messages
  doc: ': be verbose: write messages about what lastdb is doing'
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- lastdb8
