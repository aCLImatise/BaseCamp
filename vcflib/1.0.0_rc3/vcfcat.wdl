version 1.0

task Vcfcat {
  input {
    Int? file_one
    Int? file_two
  }
  command <<<
    vcfcat \
      ~{file_one} \
      ~{file_two}
  >>>
  parameter_meta {
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}