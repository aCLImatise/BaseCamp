version 1.0

task Getmlstpy {
  input {
    String? repository_url
    String? species
    Boolean? force_scheme_name
  }
  command <<<
    getmlst_py \
      ~{if defined(repository_url) then ("--repository_url " +  '"' + repository_url + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if (force_scheme_name) then "--force_scheme_name" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    repository_url: "URL for MLST repository XML index"
    species: "The name of the species that you want to download\\n(e.g. \\\"Escherichia coli\\\")"
    force_scheme_name: "Flage to force downloading of specific scheme name\\n(e.g. \\\"Clostridium difficile\\\")\\n"
  }
  output {
    File out_stdout = stdout()
  }
}