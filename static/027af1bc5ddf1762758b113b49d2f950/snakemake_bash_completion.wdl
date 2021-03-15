version 1.0

task Snakemakebashcompletion {
  command <<<
    snakemake_bash_completion
  >>>
  runtime {
    docker: "quay.io/biocontainers/snakemake-minimal:6.0.2--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}