version 1.0

task AnviUpgrade {
  input {
    String? repository
  }
  command <<<
    anvi-upgrade \
      ~{if defined(repository) then ("--repository " +  '"' + repository + '"') else ""}
  >>>
  parameter_meta {
    repository: "Source repository to download releases, currently only Github is supported. Enter in 'merenlab/anvio' format."
  }
}