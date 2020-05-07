version 1.0

task DownloadRefSeq.pl {
  input {
    String? dbDb
    String? sequencesSequencesOutDirectory
    String? taxonomyTaxonomyOutDirectory
    String? targetTargetBranches
    String? skipSkipIncompleteGenomes
  }
  command <<<
    downloadRefSeq.pl \
      ~{dbDb} \
      ~{sequencesSequencesOutDirectory} \
      ~{taxonomyTaxonomyOutDirectory} \
      ~{targetTargetBranches} \
      ~{skipSkipIncompleteGenomes}
  >>>
}