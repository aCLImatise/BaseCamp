version 1.0

task MsisensorMsi {
  input {
    Boolean? string_homopolymer_microsates
    Boolean? string_normal_file
    Boolean? string_bam_file
    File? string_distribution_file
    Boolean? string_file_optional
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
      ~{if (string_homopolymer_microsates) then "-d" else ""} \
      ~{if (string_normal_file) then "-n" else ""} \
      ~{if (string_bam_file) then "-t" else ""} \
      ~{if (string_distribution_file) then "-o" else ""} \
      ~{if (string_file_optional) then "-e" else ""} \
      ~{if (double_fdr_threshold) then "-f" else ""} \
      ~{if (double_minimal_comentropy) then "-i" else ""} \
      ~{if (int_coverage_threshold) then "-c" else ""} \
      ~{if (string_choose_format) then "-r" else ""} \
      ~{if (int_minimal_homopolymer_size_default) then "-l" else ""} \
      ~{if (int_minimal_homopolymer_size_distribution) then "-p" else ""} \
      ~{if (int_maximal_homopolymer) then "-m" else ""} \
      ~{if (int_minimal_microsates_size_default) then "-q" else ""} \
      ~{if (int_minimal_microsates_size_distribution) then "-s" else ""} \
      ~{if (int_maximal_microstaes) then "-w" else ""} \
      ~{if (int_span_size) then "-u" else ""} \
      ~{if (int_threads_number) then "-b" else ""} \
      ~{if (int_output_homopolymer) then "-x" else ""} \
      ~{if (int_output_microsatellite) then "-y" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_homopolymer_microsates: "<string>   homopolymer and microsates file"
    string_normal_file: "<string>   normal bam file"
    string_bam_file: "<string>   tumor  bam file"
    string_distribution_file: "<string>   output distribution file"
    string_file_optional: "<string>   bed file, optional"
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
  output {
    File out_stdout = stdout()
    File out_string_distribution_file = "${in_string_distribution_file}"
  }
}