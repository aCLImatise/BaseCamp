version 1.0

task TradisGeneInsertSites {
  input {
    Boolean? outputsuffix_suffix_add
    Boolean? trim_five
    Boolean? trim_three
    Boolean? joinedoutput_output_file
  }
  command <<<
    tradis_gene_insert_sites \
      ~{true="-o" false="" outputsuffix_suffix_add} \
      ~{true="-trim5" false="" trim_five} \
      ~{true="-trim3" false="" trim_three} \
      ~{true="-j" false="" joinedoutput_output_file}
  >>>
  parameter_meta {
    outputsuffix_suffix_add: "|output_suffix     <suffix to add to output files (optional, default = tradis_gene_insert_sites.csv)>"
    trim_five: "<trim insertion sites from 5' end of gene (optional, default = 0)>"
    trim_three: "<trim insertion sites from 3' end of gene (optional, default = 0)>"
    joinedoutput_output_file: "|joined_output     <output a single file with all info. default = one file per input file>"
  }
}