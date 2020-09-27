version 1.0

task FetchAssociationspy {
  command <<<
    fetch_associations_py
  >>>
  output {
    File out_stdout = stdout()
  }
}