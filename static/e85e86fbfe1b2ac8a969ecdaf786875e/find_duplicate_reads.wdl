version 1.0

task FindDuplicateReads {
  input {
    String bank_name
  }
  command <<<
    find-duplicate-reads \
      ~{bank_name}
  >>>
  parameter_meta {
    bank_name: ""
  }
}