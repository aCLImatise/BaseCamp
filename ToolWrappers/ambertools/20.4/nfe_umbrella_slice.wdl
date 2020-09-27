version 1.0

task Nfeumbrellaslice {
  input {
    File filename
  }
  command <<<
    nfe_umbrella_slice \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}