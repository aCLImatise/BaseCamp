version 1.0

task AnviUpgrade {
  input {
    String repositoryRepository
  }
  command <<<
    anvi-upgrade \
      ~{if defined(repositoryRepository) then ("--repository " +  '"' + repositoryRepository + '"') else ""}
  >>>
}