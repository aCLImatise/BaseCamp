version 1.0

task Lastdb {
  input {
    Boolean? interpret_sequences_proteins
    Boolean? repeatmarking_options_default
    Boolean? softmask_lowercase_letters
    Boolean? seeding_scheme_default
    Boolean? use_initial_matches
    Boolean? use_positions_sliding
    Boolean? strand_reverse_forward
    Boolean? volume_size_unlimited
    Boolean? input_format_fasta
    Boolean? number_parallel_threads
    Boolean? _seed_pattern
    Boolean? _userdefined_alphabet
    Boolean? minimum_limit_initial
    Boolean? _bucket_depth
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
      ~{if (repeatmarking_options_default) then "-R" else ""} \
      ~{if (softmask_lowercase_letters) then "-c" else ""} \
      ~{if (seeding_scheme_default) then "-u" else ""} \
      ~{if (use_initial_matches) then "-w" else ""} \
      ~{if (use_positions_sliding) then "-W" else ""} \
      ~{if (strand_reverse_forward) then "-S" else ""} \
      ~{if (volume_size_unlimited) then "-s" else ""} \
      ~{if (input_format_fasta) then "-Q" else ""} \
      ~{if (number_parallel_threads) then "-P" else ""} \
      ~{if (_seed_pattern) then "-m" else ""} \
      ~{if (_userdefined_alphabet) then "-a" else ""} \
      ~{if (minimum_limit_initial) then "-i" else ""} \
      ~{if (_bucket_depth) then "-b" else ""} \
      ~{if (child_table_type) then "-C" else ""} \
      ~{if (just_count_sequences) then "-x" else ""} \
      ~{if (be_verbose_write) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    interpret_sequences_proteins: ": interpret the sequences as proteins"
    repeatmarking_options_default: ": repeat-marking options (default=10)"
    softmask_lowercase_letters: ": soft-mask lowercase letters (in reference *and* query sequences)"
    seeding_scheme_default: ": seeding scheme (default: YASS for DNA, else exact-match seeds)"
    use_initial_matches: ": use initial matches starting at every w-th position in each sequence (1)"
    use_positions_sliding: ": use \\\"minimum\\\" positions in sliding windows of W consecutive positions (1)"
    strand_reverse_forward: ": strand: 0=reverse, 1=forward, 2=both (1)"
    volume_size_unlimited: ": volume size (unlimited)"
    input_format_fasta: ": input format: 0=fasta or fastq-ignore,\\n1=fastq-sanger, 2=fastq-solexa, 3=fastq-illumina (fasta)"
    number_parallel_threads: ": number of parallel threads (1)"
    _seed_pattern: ": seed pattern"
    _userdefined_alphabet: ": user-defined alphabet"
    minimum_limit_initial: ": minimum limit on initial matches per query position (0)"
    _bucket_depth: ": bucket depth"
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