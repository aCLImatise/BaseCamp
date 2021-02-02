version 1.0

task HailctlDataprocDescribe {
  input {
    File file
  }
  command <<<
    hailctl dataproc describe \
      ~{file}
  >>>
  parameter_meta {
    file: "Path to hail file (either MatrixTable or Table)."
  }
  output {
    File out_stdout = stdout()
  }
}