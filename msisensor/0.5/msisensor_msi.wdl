version 1.0

task MsisensorMsi {
  input {
    Boolean? string_homopolymer_microsates
    Boolean? string_normal_file
    Boolean? string_tumor_file
    Boolean? string_distribution_file
    Boolean? string_bed_file
    Boolean? double_fdr_threshold
    Boolean? double_minimal_comentropy
    Boolean? int_coverage_threshold
    Boolean? string_choose_format
    Boolean? int_minimal_homopolymer_size_default
    Boolean? int_minimal_homopolymer_size_distribution
    Boolean? int_maximal_homopolymer
    Boolean? int_minimal_microsates_size_default
    Boolean? int_minimal_microsates_size_distribution
    Boolean? int_maximal_microstaes
    Boolean? int_span_size
    Boolean? int_threads_number
    Boolean? int_output_homopolymer
    Boolean? int_output_microsatellite
  }
  command <<<
    msisensor msi \
      ~{true="-d" false="" string_homopolymer_microsates} \
      ~{true="-n" false="" string_normal_file} \
      ~{true="-t" false="" string_tumor_file} \
      ~{true="-o" false="" string_distribution_file} \
      ~{true="-e" false="" string_bed_file} \
      ~{true="-f" false="" double_fdr_threshold} \
      ~{true="-i" false="" double_minimal_comentropy} \
      ~{true="-c" false="" int_coverage_threshold} \
      ~{true="-r" false="" string_choose_format} \
      ~{true="-l" false="" int_minimal_homopolymer_size_default} \
      ~{true="-p" false="" int_minimal_homopolymer_size_distribution} \
      ~{true="-m" false="" int_maximal_homopolymer} \
      ~{true="-q" false="" int_minimal_microsates_size_default} \
      ~{true="-s" false="" int_minimal_microsates_size_distribution} \
      ~{true="-w" false="" int_maximal_microstaes} \
      ~{true="-u" false="" int_span_size} \
      ~{true="-b" false="" int_threads_number} \
      ~{true="-x" false="" int_output_homopolymer} \
      ~{true="-y" false="" int_output_microsatellite}
  >>>
  parameter_meta {
    string_homopolymer_microsates: "<string>   homopolymer and microsates file"
    string_normal_file: "<string>   normal bam file"
    string_tumor_file: "<string>   tumor  bam file"
    string_distribution_file: "<string>   output distribution file"
    string_bed_file: "<string>   bed file, optional"
    double_fdr_threshold: "<double>   FDR threshold for somatic sites detection, default=0.05"
    double_minimal_comentropy: "<double>   minimal comentropy threshold for somatic sites detection (just for tumor only data), default=1"
    int_coverage_threshold: "<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=20"
    string_choose_format: "<string>   choose one region, format: 1:10000000-20000000"
    int_minimal_homopolymer_size_default: "<int>      minimal homopolymer size, default=5"
    int_minimal_homopolymer_size_distribution: "<int>      minimal homopolymer size for distribution analysis, default=10"
    int_maximal_homopolymer: "<int>      maximal homopolymer size for distribution analysis, default=50"
    int_minimal_microsates_size_default: "<int>      minimal microsates size, default=3"
    int_minimal_microsates_size_distribution: "<int>      minimal microsates size for distribution analysis, default=5"
    int_maximal_microstaes: "<int>      maximal microstaes size for distribution analysis, default=40"
    int_span_size: "<int>      span size around window for extracting reads, default=500"
    int_threads_number: "<int>      threads number for parallel computing, default=1"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
    int_output_microsatellite: "<int>      output microsatellite only, 0: no; 1: yes, default=0"
  }
}