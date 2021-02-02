version 1.0

task PybelManageNamespaces {
  input {
    String drop
    String insert
    String ls
  }
  command <<<
    pybel manage namespaces \
      ~{drop} \
      ~{insert} \
      ~{ls}
  >>>
  parameter_meta {
    drop: "Drop a namespace by URL."
    insert: "Add a namespace by URL."
    ls: "List cached namespaces."
  }
  output {
    File out_stdout = stdout()
  }
}