version 1.0

task MsisensorproPro {
  input {
    Boolean? string_homopolymers_microsatellites
    Boolean? string_bam_file
    Boolean? string_output_prefix
    Boolean? string_file_optional
    Boolean? double_minimal_threshold
    Boolean? int_coverage_threshold
    Boolean? string_choose_format
    Boolean? int_minimal_homopolymer
    Boolean? int_maximal_homopolymer
    Boolean? int_minimal_microsatellite
    Boolean? int_maximal_size
    Boolean? int_span_size
    Boolean? int_threads_number
    Boolean? int_output_homopolymer
    Boolean? int_output_microsatellite
    Boolean? int_output_site
  }
  command <<<
    msisensor_pro pro \
      ~{if (string_homopolymers_microsatellites) then "-d" else ""} \
      ~{if (string_bam_file) then "-t" else ""} \
      ~{if (string_output_prefix) then "-o" else ""} \
      ~{if (string_file_optional) then "-e" else ""} \
      ~{if (double_minimal_threshold) then "-i" else ""} \
      ~{if (int_coverage_threshold) then "-c" else ""} \
      ~{if (string_choose_format) then "-r" else ""} \
      ~{if (int_minimal_homopolymer) then "-p" else ""} \
      ~{if (int_maximal_homopolymer) then "-m" else ""} \
      ~{if (int_minimal_microsatellite) then "-s" else ""} \
      ~{if (int_maximal_size) then "-w" else ""} \
      ~{if (int_span_size) then "-u" else ""} \
      ~{if (int_threads_number) then "-b" else ""} \
      ~{if (int_output_homopolymer) then "-x" else ""} \
      ~{if (int_output_microsatellite) then "-y" else ""} \
      ~{if (int_output_site) then "-0" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msisensor-pro:1.1.a--hb3646a4_0"
  }
  parameter_meta {
    string_homopolymers_microsatellites: "<string>   homopolymers and microsatellites file"
    string_bam_file: "<string>   tumor bam file"
    string_output_prefix: "<string>   output prefix"
    string_file_optional: "<string>   bed file, optional"
    double_minimal_threshold: "<double>   minimal threshold for instable sites detection (just for tumor only data), default=0.1"
    int_coverage_threshold: "<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=15"
    string_choose_format: "<string>   choose one region, format: 1:10000000-20000000"
    int_minimal_homopolymer: "<int>      minimal homopolymer size for distribution analysis, default=8"
    int_maximal_homopolymer: "<int>      maximal homopolymer size for distribution analysis, default=50"
    int_minimal_microsatellite: "<int>      minimal microsatellite size for distribution analysis, default=5"
    int_maximal_size: "<int>      maximal microsatellite size for distribution analysis, default=40"
    int_span_size: "<int>      span size around window for extracting reads, default=500"
    int_threads_number: "<int>      threads number for parallel computing, default=1"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
    int_output_microsatellite: "<int>      output microsatellite only, 0: no; 1: yes, default=0"
    int_output_site: "<int>      output site have no read coverage, 1: no; 0: yes, default=0"
  }
  output {
    File out_stdout = stdout()
  }
}