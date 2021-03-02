version 1.0

task ProphyleOtuTablepy {
  input {
    String? comma_separated_list
    Int? position_taxid_input
    Int? position_read_i
    File? log_file
  }
  command <<<
    prophyle_otu_table_py \
      ~{if defined(comma_separated_list) then ("-r " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(position_taxid_input) then ("-t " +  '"' + position_taxid_input + '"') else ""} \
      ~{if defined(position_read_i) then ("-i " +  '"' + position_read_i + '"') else ""} \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comma_separated_list: "comma separated list of ranks to build the OTU table for\\n[species,genus,family,phylum,class,order,kingdom]"
    position_taxid_input: "position of the taxid in the input lines [3 (for sam and\\nkraken format)]"
    position_read_i: "position of the read id in the input lines [1 (for sam, use\\n2 for kraken)]"
    log_file: "log file [stderr]"
  }
  output {
    File out_stdout = stdout()
  }
}