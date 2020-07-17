version 1.0

task MsisensorProPro {
  input {
    Boolean? string_homopolymer_microsates
    Boolean? string_tumor_file
    Boolean? string_output_prefix
    Boolean? string_bed_file
    Boolean? double_minimal_threshold
    Boolean? int_coverage_threshold
    Boolean? string_choose_format
    Boolean? int_minimal_homopolymer
    Boolean? int_maximal_homopolymer
    Boolean? int_minimal_microsatellite
    Boolean? int_maximal_microsatellite
    Boolean? int_span_size
    Boolean? int_threads_number
    Boolean? int_output_homopolymer
    Boolean? int_output_microsatellite
    Boolean? int_output_site
  }
  command <<<
    msisensor-pro pro \
      ~{true="-d" false="" string_homopolymer_microsates} \
      ~{true="-t" false="" string_tumor_file} \
      ~{true="-o" false="" string_output_prefix} \
      ~{true="-e" false="" string_bed_file} \
      ~{true="-i" false="" double_minimal_threshold} \
      ~{true="-c" false="" int_coverage_threshold} \
      ~{true="-r" false="" string_choose_format} \
      ~{true="-p" false="" int_minimal_homopolymer} \
      ~{true="-m" false="" int_maximal_homopolymer} \
      ~{true="-s" false="" int_minimal_microsatellite} \
      ~{true="-w" false="" int_maximal_microsatellite} \
      ~{true="-u" false="" int_span_size} \
      ~{true="-b" false="" int_threads_number} \
      ~{true="-x" false="" int_output_homopolymer} \
      ~{true="-y" false="" int_output_microsatellite} \
      ~{true="-0" false="" int_output_site}
  >>>
  parameter_meta {
    string_homopolymer_microsates: "<string>   homopolymer and microsates file"
    string_tumor_file: "<string>   tumor bam file"
    string_output_prefix: "<string>   output prefix"
    string_bed_file: "<string>   bed file, optional"
    double_minimal_threshold: "<double>   minimal threshold for instable sites detection (just for tumor only data), default=0.1"
    int_coverage_threshold: "<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=1"
    string_choose_format: "<string>   choose one region, format: 1:10000000-20000000"
    int_minimal_homopolymer: "<int>      minimal homopolymer size for distribution analysis, default=10"
    int_maximal_homopolymer: "<int>      maximal homopolymer size for distribution analysis, default=50"
    int_minimal_microsatellite: "<int>      minimal microsatellite size for distribution analysis, default=5"
    int_maximal_microsatellite: "<int>      maximal microsatellite size for distribution analysis, default=40"
    int_span_size: "<int>      span size around window for extracting reads, default=500"
    int_threads_number: "<int>      threads number for parallel computing, default=1"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
    int_output_microsatellite: "<int>      output microsatellite only, 0: no; 1: yes, default=0"
    int_output_site: "<int>      output site have no read coverage, 1: no; 0: yes, default=0"
  }
}