version 1.0

task Caspol {
  input {
    String? arguments
  }
  command <<<
    caspol \
      ~{arguments}
  >>>
  parameter_meta {
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}