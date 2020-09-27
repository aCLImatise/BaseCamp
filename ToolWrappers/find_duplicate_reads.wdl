version 1.0

task Findduplicatereads {
  input {
    String bank_name
  }
  command <<<
    find_duplicate_reads \
      ~{bank_name}
  >>>
  parameter_meta {
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}