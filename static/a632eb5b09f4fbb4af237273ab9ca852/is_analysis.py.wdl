version 1.0

task IsAnalysispy {
  command <<<
    is_analysis_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}