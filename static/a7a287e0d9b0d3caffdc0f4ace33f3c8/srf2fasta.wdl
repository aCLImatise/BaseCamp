version 1.0

task Srf2fasta {
  input {
    Boolean cC
    String? archiveArchiveName
  }
  command <<<
    srf2fasta \
      ~{archiveArchiveName} \
      ~{true="-C" false="" cC}
  >>>
}