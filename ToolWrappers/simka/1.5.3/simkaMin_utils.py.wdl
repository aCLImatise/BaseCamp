version 1.0

task SimkaMinUtilspy {
  command <<<
    simkaMin_utils_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
  }
  output {
    File out_stdout = stdout()
  }
}