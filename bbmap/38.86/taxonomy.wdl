version 1.0

task Taxonomy.sh {
  input {
    String tree
  }
  command <<<
    taxonomy.sh \
      ~{tree}
  >>>
  parameter_meta {
    tree: ""
  }
}