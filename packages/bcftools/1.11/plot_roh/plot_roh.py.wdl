version 1.0

task Plotrohpy {
  command <<<
    plot_roh_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  output {
    File out_stdout = stdout()
  }
}