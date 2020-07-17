version 1.0

task FindGO.pl {
  input {
    Boolean? cpu
    Boolean? human
    Boolean? custom_id
    File? ontology
    String target_ids_file
    String organism
    String output_directory
  }
  command <<<
    findGO.pl \
      ~{target_ids_file} \
      ~{organism} \
      ~{output_directory} \
      ~{true="-cpu" false="" cpu} \
      ~{true="-human" false="" human} \
      ~{true="-customID" false="" custom_id} \
      ~{if defined(ontology) then ("-ontology " +  '"' + ontology + '"') else ""}
  >>>
  parameter_meta {
    cpu: "<#> (number of cpus to use)"
    human: "(convert IDs and run as human [uses homologene])"
    custom_id: "(don't convert IDs)"
    ontology: "[file2.genes] ... (custom ontologies)"
    target_ids_file: ""
    organism: ""
    output_directory: ""
  }
}