version 1.0

task Mscat {
  input {
    File filename
  }
  command <<<
    mscat \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}