version 1.0

task NormalizeOneDR {
  command <<<
    normalize_oneD_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/tadbit:1.0.1--py38h6ed170a_0"
  }
  output {
    File out_stdout = stdout()
  }
}