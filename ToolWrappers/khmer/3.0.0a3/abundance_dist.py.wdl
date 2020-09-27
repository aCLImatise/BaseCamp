version 1.0

task Abundancedistpy {
  input {
    Boolean? q
    Boolean? f
    Boolean? b
    Boolean? s
    Boolean? z
    Boolean? info
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
      ~{if (q) then "-q" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (b) then "-b" else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (z) then "-z" else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    q: ""
    f: ""
    b: ""
    s: ""
    z: ""
    info: ""
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