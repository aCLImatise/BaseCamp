version 1.0

task SimplifyLibraries {
  input {
    String bank_name
  }
  command <<<
    simplifyLibraries \
      ~{bank_name}
  >>>
  parameter_meta {
    bank_name: ""
  }
}