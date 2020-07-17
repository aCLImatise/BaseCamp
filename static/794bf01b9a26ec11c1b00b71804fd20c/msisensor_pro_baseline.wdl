version 1.0

task MsisensorProBaseline {
  input {
    Boolean? string_homopolymer_file
    Boolean? string_configure_files
    Boolean? string_output_directory
    Boolean? int_coverage_threshold
    Boolean? double_site_ratio
    Boolean? int_minimal_homopolymer
    Boolean? int_maximal_homopolymer
    Boolean? int_span_size
    Boolean? int_minimal_microsatellite
    Boolean? int_maximal_microsatellite
    Boolean? int_threads_number
    Boolean? int_output_homopolymer
    Boolean? int_output_microsatellite
    Boolean? int_output_site
  }
  command <<<
    msisensor-pro baseline \
      ~{true="-d" false="" string_homopolymer_file} \
      ~{true="-i" false="" string_configure_files} \
      ~{true="-o" false="" string_output_directory} \
      ~{true="-c" false="" int_coverage_threshold} \
      ~{true="-l" false="" double_site_ratio} \
      ~{true="-p" false="" int_minimal_homopolymer} \
      ~{true="-m" false="" int_maximal_homopolymer} \
      ~{true="-u" false="" int_span_size} \
      ~{true="-s" false="" int_minimal_microsatellite} \
      ~{true="-w" false="" int_maximal_microsatellite} \
      ~{true="-b" false="" int_threads_number} \
      ~{true="-x" false="" int_output_homopolymer} \
      ~{true="-y" false="" int_output_microsatellite} \
      ~{true="-0" false="" int_output_site}
  >>>
  parameter_meta {
    string_homopolymer_file: "<string>   homopolymer and microsatellite file"
    string_configure_files: "<string>   configure files for building baseline (text file)  e.g. case1     /path/to/case1_sorted.bam case2     /path/to/case1_sorted.bam case2     /path/to/case1-sorted.bam"
    string_output_directory: "<string>   output directory"
    int_coverage_threshold: "<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=1"
    double_site_ratio: "<double>   a site with a ratio of deteced in all samples less than this parameter will be removed in following analysis, default=0.5"
    int_minimal_homopolymer: "<int>      minimal homopolymer size for pro analysis, default=10"
    int_maximal_homopolymer: "<int>      maximal homopolymer size for pro analysis, default=50"
    int_span_size: "<int>      span size around window for extracting reads, default=500"
    int_minimal_microsatellite: "<int>      minimal microsatellite size for distribution analysis, default=5"
    int_maximal_microsatellite: "<int>      maximal microsatellite size for distribution analysis, default=40"
    int_threads_number: "<int>      threads number for parallel computing, default=1"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
    int_output_microsatellite: "<int>      output microsatellite only, 0: no; 1: yes, default=0"
    int_output_site: "<int>      output site have no read coverage, 1: no; 0: yes, default=0"
  }
}