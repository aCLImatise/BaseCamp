version 1.0

task Volint {
  input {
    File filename
  }
  command <<<
    volint \
      ~{filename}
  >>>
  parameter_meta {
    filename: "Path to VOTable file to check"
  }
  output {
    File out_stdout = stdout()
  }
}