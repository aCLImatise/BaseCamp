version 1.0

task Pbcstat {
  input {
    Boolean? int_maximum_coverage
    Boolean? float_minimum_mapping
    Boolean? int_minimum_mapping
    Boolean? int_flanking_space
    Boolean? bool_only_use
    Directory? str_output_directory
    String aa_pb
    String paf_file
  }
  command <<<
    pbcstat \
      ~{aa_pb} \
      ~{paf_file} \
      ~{if (int_maximum_coverage) then "-M" else ""} \
      ~{if (float_minimum_mapping) then "-f" else ""} \
      ~{if (int_minimum_mapping) then "-q" else ""} \
      ~{if (int_flanking_space) then "-l" else ""} \
      ~{if (bool_only_use) then "-p" else ""} \
      ~{if (str_output_directory) then "-O" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0"
  }
  parameter_meta {
    int_maximum_coverage: "INT      maximum coverage [500]"
    float_minimum_mapping: "FLOAT    minimum mapping length ratio [0]"
    int_minimum_mapping: "INT      minimum mapping quality [-1]"
    int_flanking_space: "INT      flanking space [0]"
    bool_only_use: "BOOL     only use primary alignments [TRUE]"
    str_output_directory: "STR      output directory [.]"
    aa_pb: ""
    paf_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_str_output_directory = "${in_str_output_directory}"
  }
}