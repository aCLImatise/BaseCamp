version 1.0

task InsertSizes {
  input {
    String bank_path
  }
  command <<<
    insert-sizes \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}