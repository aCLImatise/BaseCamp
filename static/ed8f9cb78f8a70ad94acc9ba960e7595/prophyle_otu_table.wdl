version 1.0

task ProphyleOtuTable.py {
  input {
    String? comma_separated_list
    String? position_taxid_input
    String? position_read_d
    String? log_file
  }
  command <<<
    prophyle_otu_table.py \
      ~{if defined(comma_separated_list) then ("-r " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(position_taxid_input) then ("-t " +  '"' + position_taxid_input + '"') else ""} \
      ~{if defined(position_read_d) then ("-i " +  '"' + position_read_d + '"') else ""} \
      ~{if defined(log_file) then ("-l " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    comma_separated_list: "comma separated list of ranks to build the OTU table for [species,genus,family,phylum,class,order,kingdom]"
    position_taxid_input: "position of the taxid in the input lines [3 (for sam and kraken format)]"
    position_read_d: "position of the read id in the input lines [1 (for sam, use 2 for kraken)]"
    log_file: "log file [stderr]"
  }
}