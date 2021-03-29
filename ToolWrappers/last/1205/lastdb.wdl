version 1.0

task Lastdb {
  input {
    Boolean? interpret_sequences_proteins
    Boolean? softmask_lowercase_letters
    Boolean? seeding_scheme_default
    Boolean? number_parallel_threads
    Boolean? lowercase_simplesequence_options
    Boolean? use_initial_matches
    Boolean? use_positions_sliding
    Boolean? strand_reverse_forward
    Boolean? volume_size_unlimited
    Boolean? input_format_fastx
    Boolean? interpret_sequences_and
    Boolean? seed_patterns_match
    Boolean? dna_seed_patterns
    Boolean? _userdefined_alphabet
    Boolean? minimum_limit_initial
    Boolean? maximum_length_buckets
    Boolean? use_bucket_length
    Boolean? child_table_type
    Boolean? just_count_sequences
    Boolean? be_verbose_write
    String output_name
    File fast_a_sequence_file
  }
  command <<<
    lastdb \
      ~{output_name} \
      ~{fast_a_sequence_file} \
      ~{if (interpret_sequences_proteins) then "-p" else ""} \
      ~{if (softmask_lowercase_letters) then "-c" else ""} \
      ~{if (seeding_scheme_default) then "-u" else ""} \
      ~{if (number_parallel_threads) then "-P" else ""} \
      ~{if (lowercase_simplesequence_options) then "-R" else ""} \
      ~{if (use_initial_matches) then "-w" else ""} \
      ~{if (use_positions_sliding) then "-W" else ""} \
      ~{if (strand_reverse_forward) then "-S" else ""} \
      ~{if (volume_size_unlimited) then "-s" else ""} \
      ~{if (input_format_fastx) then "-Q" else ""} \
      ~{if (interpret_sequences_and) then "-q" else ""} \
      ~{if (seed_patterns_match) then "-m" else ""} \
      ~{if (dna_seed_patterns) then "-d" else ""} \
      ~{if (_userdefined_alphabet) then "-a" else ""} \
      ~{if (minimum_limit_initial) then "-i" else ""} \
      ~{if (maximum_length_buckets) then "-b" else ""} \
      ~{if (use_bucket_length) then "-B" else ""} \
      ~{if (child_table_type) then "-C" else ""} \
      ~{if (just_count_sequences) then "-x" else ""} \
      ~{if (be_verbose_write) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/last:1205--h8b12597_0"
  }
  parameter_meta {
    interpret_sequences_proteins: ": interpret the sequences as proteins"
    softmask_lowercase_letters: ": soft-mask lowercase letters (in reference *and* query sequences)"
    seeding_scheme_default: ": seeding scheme (default: YASS for DNA, else exact-match seeds)"
    number_parallel_threads: ": number of parallel threads (default: 1)"
    lowercase_simplesequence_options: ": lowercase & simple-sequence options (default: 03 for -q, else 01)"
    use_initial_matches: ": use initial matches starting at every w-th position in each sequence (1)"
    use_positions_sliding: ": use \\\"minimum\\\" positions in sliding windows of W consecutive positions (1)"
    strand_reverse_forward: ": strand: 0=reverse, 1=forward, 2=both (1)"
    volume_size_unlimited: ": volume size (unlimited)"
    input_format_fastx: ": input format: fastx, keep, sanger, solexa, illumina (default=fasta)"
    interpret_sequences_and: ": interpret the sequences as proteins and append */STOP"
    seed_patterns_match: ": seed patterns (1=match, 0=anything, @=transition)"
    dna_seed_patterns: ": DNA seed patterns (N=match, n=anything, R=purine match, etc.)"
    _userdefined_alphabet: ": user-defined alphabet"
    minimum_limit_initial: ": minimum limit on initial matches per query position (0)"
    maximum_length_buckets: ": maximum length for buckets"
    use_bucket_length: ": use max bucket length with memory <= (memory for stored positions) / B (4)"
    child_table_type: ": child table type: 0=none, 1=byte-size, 2=short-size, 3=full (0)"
    just_count_sequences: ": just count sequences and letters"
    be_verbose_write: ": be verbose: write messages about what lastdb is doing"
    output_name: ""
    fast_a_sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}