version 1.0

task Fitsinfo {
  input {
    File filename
  }
  command <<<
    fitsinfo \
      ~{filename}
  >>>
  parameter_meta {
    filename: "Path to one or more FITS files. Wildcards are supported."
  }
  output {
    File out_stdout = stdout()
  }
}