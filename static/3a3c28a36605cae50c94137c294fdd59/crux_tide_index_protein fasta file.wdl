version 1.0

task CruxTideIndexProtein fasta file {
  input {
    String? indexIndexName
  }
  command <<<
    crux tide-index protein fasta file \
      ~{indexIndexName}
  >>>
}