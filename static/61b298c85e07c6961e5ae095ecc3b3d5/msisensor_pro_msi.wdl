version 1.0

task MsisensorProMsi {
  input {
    Boolean? string_homopolymers_file
    Boolean? string_normal_file
    Boolean? string_tumor_file
    Boolean? string_output_prefix
    Boolean? string_bed_file
    Boolean? double_fdr_threshold
    Boolean? int_coverage_threshold
    Boolean? int_coverage_normalization
    Boolean? string_choose_format
    Boolean? int_minimal_homopolymer
    Boolean? int_maximal_homopolymer
    Boolean? int_minimal_microsatellite
    Boolean? int_maximal_microsatellite
    Boolean? int_span_size
    Boolean? int_threads_number
    Boolean? int_output_homopolymer
    Boolean? int_output_microsatellites
    Boolean? int_output_site
  }
  command <<<
    msisensor-pro msi \
      ~{true="-d" false="" string_homopolymers_file} \
      ~{true="-n" false="" string_normal_file} \
      ~{true="-t" false="" string_tumor_file} \
      ~{true="-o" false="" string_output_prefix} \
      ~{true="-e" false="" string_bed_file} \
      ~{true="-f" false="" double_fdr_threshold} \
      ~{true="-c" false="" int_coverage_threshold} \
      ~{true="-z" false="" int_coverage_normalization} \
      ~{true="-r" false="" string_choose_format} \
      ~{true="-p" false="" int_minimal_homopolymer} \
      ~{true="-m" false="" int_maximal_homopolymer} \
      ~{true="-s" false="" int_minimal_microsatellite} \
      ~{true="-w" false="" int_maximal_microsatellite} \
      ~{true="-u" false="" int_span_size} \
      ~{true="-b" false="" int_threads_number} \
      ~{true="-x" false="" int_output_homopolymer} \
      ~{true="-y" false="" int_output_microsatellites} \
      ~{true="-0" false="" int_output_site}
  >>>
  parameter_meta {
    string_homopolymers_file: "<string>   homopolymers and microsatellites file"
    string_normal_file: "<string>   normal bam file with index"
    string_tumor_file: "<string>   tumor  bam file with index"
    string_output_prefix: "<string>   output prefix"
    string_bed_file: "<string>   bed file, optional"
    double_fdr_threshold: "<double>   FDR threshold for somatic sites detection, default=0.05"
    int_coverage_threshold: "<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=1"
    int_coverage_normalization: "<int>      coverage normalization for paired tumor and normal data, 0: no; 1: yes, default=0"
    string_choose_format: "<string>   choose one region, format: 1:10000000-20000000"
    int_minimal_homopolymer: "<int>      minimal homopolymer size for distribution analysis, default=10"
    int_maximal_homopolymer: "<int>      maximal homopolymer size for distribution analysis, default=50"
    int_minimal_microsatellite: "<int>      minimal microsatellite size for distribution analysis, default=5"
    int_maximal_microsatellite: "<int>      maximal microsatellite size for distribution analysis, default=40"
    int_span_size: "<int>      span size around window for extracting reads, default=500"
    int_threads_number: "<int>      threads number for parallel computing, default=1"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
    int_output_microsatellites: "<int>      output microsatellites only, 0: no; 1: yes, default=0"
    int_output_site: "<int>      output site have no read coverage, 1: no; 0: yes, default=0"
  }
}