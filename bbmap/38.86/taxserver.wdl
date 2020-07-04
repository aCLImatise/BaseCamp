version 1.0

task Taxserver.sh {
  input {
    String tree
  }
  command <<<
    taxserver.sh \
      ~{tree}
  >>>
  parameter_meta {
    tree: ""
  }
}