version 1.0

task ListSingletonMates {
  input {
    String bank_path
  }
  command <<<
    listSingletonMates \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}