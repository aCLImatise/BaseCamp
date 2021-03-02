version 1.0

task SimulateSequencingSimplepy {
  input {
    Int? number_simulated_reads
    Int? mean_read_length
    Int? read_gamma_parameter
    Int? read_length_distribution_point
    Int? read_length_distribution_upper
    Float? total_rate_substitutions
    Int? relative_frequency_substitutionsinsertionsdeletions
    Float? strand_bias_ratio
    Int? mock_base_quality
    File? save_true_alignments
    Boolean? quiet_print_false
    String? random_seed_none
  }
  command <<<
    simulate_sequencing_simple_py \
      ~{if defined(number_simulated_reads) then ("-n " +  '"' + number_simulated_reads + '"') else ""} \
      ~{if defined(mean_read_length) then ("-m " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(read_gamma_parameter) then ("-a " +  '"' + read_gamma_parameter + '"') else ""} \
      ~{if defined(read_length_distribution_point) then ("-l " +  '"' + read_length_distribution_point + '"') else ""} \
      ~{if defined(read_length_distribution_upper) then ("-u " +  '"' + read_length_distribution_upper + '"') else ""} \
      ~{if defined(total_rate_substitutions) then ("-e " +  '"' + total_rate_substitutions + '"') else ""} \
      ~{if defined(relative_frequency_substitutionsinsertionsdeletions) then ("-w " +  '"' + relative_frequency_substitutionsinsertionsdeletions + '"') else ""} \
      ~{if defined(strand_bias_ratio) then ("-b " +  '"' + strand_bias_ratio + '"') else ""} \
      ~{if defined(mock_base_quality) then ("-q " +  '"' + mock_base_quality + '"') else ""} \
      ~{if defined(save_true_alignments) then ("-s " +  '"' + save_true_alignments + '"') else ""} \
      ~{if (quiet_print_false) then "-Q" else ""} \
      ~{if defined(random_seed_none) then ("-z " +  '"' + random_seed_none + '"') else ""}
  >>>
  parameter_meta {
    number_simulated_reads: "Number of simulated reads (1)."
    mean_read_length: "Mean read length (5000)."
    read_gamma_parameter: "Read length distribution: gamma shape parameter (1)."
    read_length_distribution_point: "Read length distribution: lower truncation point (100)."
    read_length_distribution_upper: "Read length distribution: upper truncation point (None)."
    total_rate_substitutions: "Total rate of substitutions insertions and deletions\\n(0.1)."
    relative_frequency_substitutionsinsertionsdeletions: "Relative frequency of substitutions,insertions,deletions\\n(1,1,4)."
    strand_bias_ratio: "Strand bias: the ratio of forward and reverse reads (0.5)."
    mock_base_quality: "Mock base quality for fastq output (40)."
    save_true_alignments: "Save true alignments in this SAM file (None)."
    quiet_print_false: "Be quiet and do not print progress bar (False)."
    random_seed_none: "Random seed (None)."
  }
  output {
    File out_stdout = stdout()
  }
}