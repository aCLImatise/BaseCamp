version 1.0

task Secutil {
  input {
    File? filename
  }
  command <<<
    secutil \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}