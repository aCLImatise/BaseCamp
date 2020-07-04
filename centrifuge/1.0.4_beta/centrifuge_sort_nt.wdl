version 1.0

task CentrifugeSortNt.pl {
  input {
    String? output_mappings_present
    String? output_acs_wo
    String sequence_file
    String mapping_file
  }
  command <<<
    centrifuge-sort-nt.pl \
      ~{sequence_file} \
      ~{mapping_file} \
      ~{if defined(output_mappings_present) then ("-m " +  '"' + output_mappings_present + '"') else ""} \
      ~{if defined(output_acs_wo) then ("-a " +  '"' + output_acs_wo + '"') else ""}
  >>>
  parameter_meta {
    output_mappings_present: "Output mappings that are present in sequence file to file str"
    output_acs_wo: "Output ACs w/o mapping to file str"
    sequence_file: ""
    mapping_file: ""
  }
}