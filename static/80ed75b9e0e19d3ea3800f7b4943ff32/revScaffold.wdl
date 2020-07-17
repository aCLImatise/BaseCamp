version 1.0

task RevScaffold {
  input {
    String bank_path
  }
  command <<<
    revScaffold \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}