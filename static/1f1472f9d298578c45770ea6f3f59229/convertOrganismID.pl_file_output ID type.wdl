version 1.0

task ConvertOrganismIDplFileOutputIDtype {
  input {
    String convert_organ_is_middot_pl
    File var_file
    String current_organs_is_m
    String new_organism
    String output_id_type
  }
  command <<<
    convertOrganismID_pl file output_ID_type \
      ~{convert_organ_is_middot_pl} \
      ~{var_file} \
      ~{current_organs_is_m} \
      ~{new_organism} \
      ~{output_id_type}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert_organ_is_middot_pl: ""
    var_file: ""
    current_organs_is_m: ""
    new_organism: ""
    output_id_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}