version 1.0

task Centrifugesortntpl {
  input {
    File? output_mappings_are
    File? output_acs_mapping
    File sequence_file
    File mapping_file
  }
  command <<<
    centrifuge_sort_nt_pl \
      ~{sequence_file} \
      ~{mapping_file} \
      ~{if defined(output_mappings_are) then ("-m " +  '"' + output_mappings_are + '"') else ""} \
      ~{if defined(output_acs_mapping) then ("-a " +  '"' + output_acs_mapping + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_mappings_are: "Output mappings that are present in sequence file to file str"
    output_acs_mapping: "Output ACs w/o mapping to file str"
    sequence_file: ""
    mapping_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_mappings_are = "${in_output_mappings_are}"
    File out_output_acs_mapping = "${in_output_acs_mapping}"
  }
}