version 1.0

task Getmlst.py {
  input {
    String repositoryRepositoryUrl
    String speciesSpecies
    Boolean forceForceSchemeName
  }
  command <<<
    getmlst.py \
      ~{if defined(repositoryRepositoryUrl) then ("--repository_url " +  '"' + repositoryRepositoryUrl + '"') else ""} \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{true="--force_scheme_name" false="" forceForceSchemeName}
  >>>
}