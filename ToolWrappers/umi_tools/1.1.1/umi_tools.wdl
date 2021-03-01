version 1.0

task UmiTools {
  command <<<
    umi_tools
  >>>
  runtime {
    docker: "quay.io/biocontainers/umi_tools:1.1.1--py38h0213d0e_1"
  }
  output {
    File out_stdout = stdout()
  }
}