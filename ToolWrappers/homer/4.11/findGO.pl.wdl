version 1.0

task FindGOpl {
  input {
    File? bg
    Boolean? cpu
    Boolean? human
    Boolean? custom_id
    File? ontology
    File target_ids_file
    String organism
    Directory output_directory
  }
  command <<<
    findGO_pl \
      ~{target_ids_file} \
      ~{organism} \
      ~{output_directory} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (human) then "-human" else ""} \
      ~{if (custom_id) then "-customID" else ""} \
      ~{if defined(ontology) then ("-ontology " +  '"' + ontology + '"') else ""}
  >>>
  parameter_meta {
    bg: ""
    cpu: "<#> (number of cpus to use)"
    human: "(convert IDs and run as human [uses homologene])"
    custom_id: "(don't convert IDs)"
    ontology: "[file2.genes] ... (custom ontologies)"
    target_ids_file: ""
    organism: ""
    output_directory: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}