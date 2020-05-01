version 1.0

task Gfold {
  input {
    String? gGFold
    String? authorAuthor
    String? dateDate
    String? versionVersion
  }
  command <<<
    gfold \
      ~{gGFold} \
      ~{authorAuthor} \
      ~{dateDate} \
      ~{versionVersion}
  >>>
}