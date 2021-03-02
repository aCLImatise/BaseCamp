version 1.0

task Damageprofiler {
  input {
    File? species_list
    String mis_incorporations
  }
  command <<<
    damageprofiler \
      ~{mis_incorporations} \
      ~{if defined(species_list) then ("--specieslist " +  '"' + species_list + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    species_list: "<SPECIES LIST>"
    mis_incorporations: "-title,--title <TITLE>"
  }
  output {
    File out_stdout = stdout()
  }
}