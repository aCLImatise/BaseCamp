version 1.0

task FilterBadlist.pl {
  input {
    Boolean? flag_fix_file
    Boolean? output_genes_list
    Boolean? options
    Boolean? more_options
  }
  command <<<
    filter_badlist.pl \
      ~{true="-f" false="" flag_fix_file} \
      ~{true="-l" false="" output_genes_list} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    flag_fix_file: "Flag to fix the file."
    output_genes_list: "Output those genes that are in the list."
    options: ""
    more_options: ""
  }
}