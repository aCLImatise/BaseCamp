version 1.0

task FetchAssociationspy {
  command <<<
    fetch_associations_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}