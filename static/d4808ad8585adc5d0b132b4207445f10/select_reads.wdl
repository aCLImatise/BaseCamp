version 1.0

task SelectReads {
  input {
    String bank_path
  }
  command <<<
    select-reads \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}