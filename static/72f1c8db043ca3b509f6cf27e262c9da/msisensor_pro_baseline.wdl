version 1.0

task MsisensorproBaseline {
  input {
    Boolean? string_homopolymer_file
    Boolean? string_configure_files
    Directory? string_output_directory
    Boolean? int_coverage_threshold
    Boolean? double_site_ratio
    Boolean? int_minimal_homopolymer
    Boolean? int_maximal_homopolymer
    Boolean? int_span_size
    Boolean? int_minimal_microsatellite
    Boolean? int_maximal_size
    Boolean? int_threads_number
    Boolean? int_output_homopolymer
    Boolean? int_output_microsatellite
    Boolean? int_output_site
    String e_dot_gdot
  }
  command <<<
    msisensor_pro baseline \
      ~{e_dot_gdot} \
      ~{if (string_homopolymer_file) then "-d" else ""} \
      ~{if (string_configure_files) then "-i" else ""} \
      ~{if (string_output_directory) then "-o" else ""} \
      ~{if (int_coverage_threshold) then "-c" else ""} \
      ~{if (double_site_ratio) then "-l" else ""} \
      ~{if (int_minimal_homopolymer) then "-p" else ""} \
      ~{if (int_maximal_homopolymer) then "-m" else ""} \
      ~{if (int_span_size) then "-u" else ""} \
      ~{if (int_minimal_microsatellite) then "-s" else ""} \
      ~{if (int_maximal_size) then "-w" else ""} \
      ~{if (int_threads_number) then "-b" else ""} \
      ~{if (int_output_homopolymer) then "-x" else ""} \
      ~{if (int_output_microsatellite) then "-y" else ""} \
      ~{if (int_output_site) then "-0" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msisensor-pro:1.1.a--hb3646a4_0"
  }
  parameter_meta {
    string_homopolymer_file: "<string>   homopolymer and microsatellite file"
    string_configure_files: "<string>   configure files for building baseline (text file)"
    string_output_directory: "<string>   output directory"
    int_coverage_threshold: "<int>      coverage threshold for msi analysis, WXS: 20; WGS: 15, default=15"
    double_site_ratio: "<double>   a site with a ratio of deteced in all samples less than this parameter will be removed in following analysis, default=0.5"
    int_minimal_homopolymer: "<int>      minimal homopolymer size for pro analysis, default=8"
    int_maximal_homopolymer: "<int>      maximal homopolymer size for pro analysis, default=50"
    int_span_size: "<int>      span size around window for extracting reads, default=500"
    int_minimal_microsatellite: "<int>      minimal microsatellite size for distribution analysis, default=5"
    int_maximal_size: "<int>      maximal microsatellite size for distribution analysis, default=40"
    int_threads_number: "<int>      threads number for parallel computing, default=1"
    int_output_homopolymer: "<int>      output homopolymer only, 0: no; 1: yes, default=0"
    int_output_microsatellite: "<int>      output microsatellite only, 0: no; 1: yes, default=0"
    int_output_site: "<int>      output site have no read coverage, 1: no; 0: yes, default=0"
    e_dot_gdot: "case1     /path/to/case1_sorted.bam"
  }
  output {
    File out_stdout = stdout()
    Directory out_string_output_directory = "${in_string_output_directory}"
  }
}