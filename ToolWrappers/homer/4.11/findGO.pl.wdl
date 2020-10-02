version 1.0

task FindGOpl {
  input {
    File? bg
    File target_ids_file
    String organism
    Directory output_directory
  }
  command <<<
    findGO_pl \
      ~{target_ids_file} \
      ~{organism} \
      ~{output_directory} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""}
  >>>
  parameter_meta {
    bg: "-cpu <#> (number of cpus to use)\\n-human (convert IDs and run as human [uses homologene])\\n-customID (don't convert IDs)\\n-ontology <file.genes> [file2.genes] ... (custom ontologies)\\n"
    target_ids_file: ""
    organism: ""
    output_directory: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}