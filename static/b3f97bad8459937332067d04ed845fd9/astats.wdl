version 1.0

task Astats {
  input {
    String bank_path
  }
  command <<<
    astats \
      ~{bank_path}
  >>>
  parameter_meta {
    bank_path: ""
  }
}