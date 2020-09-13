version 1.0

task Obprop {
  input {
    File filename
  }
  command <<<
    obprop \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}