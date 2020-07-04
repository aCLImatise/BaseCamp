version 1.0

task NewPythonProg {
  input {
    String program_name
  }
  command <<<
    newPythonProg \
      ~{program_name}
  >>>
  parameter_meta {
    program_name: ""
  }
}