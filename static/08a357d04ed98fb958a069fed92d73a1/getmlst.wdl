version 1.0

task Getmlst.py {
  input {
    String? repository_url
    String? species
    Boolean? force_scheme_name
  }
  command <<<
    getmlst.py \
      ~{if defined(repository_url) then ("--repository_url " +  '"' + repository_url + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{true="--force_scheme_name" false="" force_scheme_name}
  >>>
  parameter_meta {
    repository_url: "URL for MLST repository XML index"
    species: "The name of the species that you want to download (e.g. \"Escherichia coli\")"
    force_scheme_name: "Flage to force downloading of specific scheme name (e.g. \"Clostridium difficile\")"
  }
}