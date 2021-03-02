version 1.0

task Mzngecode {
  command <<<
    mzn_gecode
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  output {
    File out_stdout = stdout()
  }
}