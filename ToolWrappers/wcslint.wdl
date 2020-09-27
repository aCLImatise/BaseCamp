version 1.0

task Wcslint {
  input {
    File filename
  }
  command <<<
    wcslint \
      ~{filename}
  >>>
  parameter_meta {
    filename: "Path to FITS file to check"
  }
  output {
    File out_stdout = stdout()
  }
}