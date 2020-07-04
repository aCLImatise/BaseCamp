version 1.0

task VerifyLayout {
  input {
    String bank_name
  }
  command <<<
    verify-layout \
      ~{bank_name}
  >>>
  parameter_meta {
    bank_name: ""
  }
}