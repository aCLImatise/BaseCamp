version 1.0

task Centrifugesortntpl {
  input {
    File? output_mappings_present
    File? output_acs_wo
    File sequence_file
    File mapping_file
  }
  command <<<
    centrifuge_sort_nt_pl \
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
  output {
    File out_stdout = stdout()
    File out_output_mappings_present = "${in_output_mappings_present}"
    File out_output_acs_wo = "${in_output_acs_wo}"
  }
}