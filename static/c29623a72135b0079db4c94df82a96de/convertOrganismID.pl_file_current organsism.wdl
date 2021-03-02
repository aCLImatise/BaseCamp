version 1.0

task ConvertOrganismIDplFileCurrentorgansism {
  input {
    String new_organism
    String output_id_type
  }
  command <<<
    convertOrganismID_pl file current_organsism \
      ~{new_organism} \
      ~{output_id_type}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    new_organism: ""
    output_id_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}