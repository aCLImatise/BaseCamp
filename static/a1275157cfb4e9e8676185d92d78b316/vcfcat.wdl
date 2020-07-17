version 1.0

task Vcfcat {
  input {
    File? file_one
    File? file_two
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
}