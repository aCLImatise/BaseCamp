version 1.0

task ConvertOrganismID.plOutput ID type {
  input {
    String convert_organ_is_middot_pl
    File file
    String current_organs_is_m
    String new_organism
    String output_id_type
  }
  command <<<
    convertOrganismID.pl output ID type \
      ~{convert_organ_is_middot_pl} \
      ~{file} \
      ~{current_organs_is_m} \
      ~{new_organism} \
      ~{output_id_type}
  >>>
  parameter_meta {
    convert_organ_is_middot_pl: ""
    file: ""
    current_organs_is_m: ""
    new_organism: ""
    output_id_type: ""
  }
}