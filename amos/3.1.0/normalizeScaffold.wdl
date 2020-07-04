version 1.0

task NormalizeScaffold {
  input {
    String bank_path
  }
  command <<<
    normalizeScaffold \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}