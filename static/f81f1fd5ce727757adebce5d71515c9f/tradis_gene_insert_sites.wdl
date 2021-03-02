version 1.0

task TradisGeneInsertSites {
  input {
    Boolean? trim_five
    Boolean? trim_three
    Boolean? joinedoutput_output_file
    String trad_is_gene_insert_sites
  }
  command <<<
    tradis_gene_insert_sites \
      ~{trad_is_gene_insert_sites} \
      ~{if (trim_five) then "-trim5" else ""} \
      ~{if (trim_three) then "-trim3" else ""} \
      ~{if (joinedoutput_output_file) then "-j" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    trim_five: "<trim insertion sites from 5' end of gene (optional, default = 0)>"
    trim_three: "<trim insertion sites from 3' end of gene (optional, default = 0)>"
    joinedoutput_output_file: "|joined_output     <output a single file with all info. default = one file per input file>"
    trad_is_gene_insert_sites: "-o|output_suffix     <suffix to add to output files (optional, default = tradis_gene_insert_sites.csv)>"
  }
  output {
    File out_stdout = stdout()
  }
}