version 1.0

task HailctlDataprocDescribe {
  input {
    File path_hail_file
  }
  command <<<
    hailctl dataproc describe \
      ~{path_hail_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_hail_file: "Path to hail file (either MatrixTable or Table)."
  }
  output {
    File out_stdout = stdout()
  }
}