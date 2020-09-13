version 1.0

task Abundancedistpy {
  input {
    Boolean? info
    Boolean? no_zero
    Boolean? squash
    Boolean? no_big_count
    Boolean? force
    Boolean? quiet
    String calculate_abundance_distribution
    String input_count_graph_filename
    String input_sequence_filename
    String columns_kmer_abundance
    Int tests_slash_test_data_slash_test_abund_read_two_dot_fa
  }
  command <<<
    abundance_dist_py \
      ~{calculate_abundance_distribution} \
      ~{input_count_graph_filename} \
      ~{input_sequence_filename} \
      ~{columns_kmer_abundance} \
      ~{tests_slash_test_data_slash_test_abund_read_two_dot_fa} \
      ~{if (info) then "--info" else ""} \
      ~{if (no_zero) then "--no-zero" else ""} \
      ~{if (squash) then "--squash" else ""} \
      ~{if (no_big_count) then "--no-bigcount" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    no_zero: "Do not output zero-count bins (default: True)"
    squash: "Overwrite existing output_histogram_filename (default:\\nFalse)"
    no_big_count: "Do not count k-mers past 255 (default: True)"
    force: "Continue even if specified input files do not exist or\\nare empty. (default: False)"
    quiet: ""
    calculate_abundance_distribution: "Calculate abundance distribution of the k-mers in the sequence file using a"
    input_count_graph_filename: "The name of the input k-mer countgraph file."
    input_sequence_filename: "The name of the input FAST[AQ] sequence file."
    columns_kmer_abundance: "The columns are: (1) k-mer abundance, (2) k-mer count,\\n(3) cumulative count, (4) fraction of total distinct\\nk-mers."
    tests_slash_test_data_slash_test_abund_read_two_dot_fa: "abundance-dist.py counts tests/test-data/test-abund-read-2.fa test-dist"
  }
  output {
    File out_stdout = stdout()
  }
}