version 1.0

task Snakemakebashcompletion {
  command <<<
    snakemake_bash_completion
  >>>
  runtime {
    docker: "quay.io/biocontainers/snakemake-minimal:6.2.1--pyhdfd78af_0"
  }
  output {
    File out_stdout = stdout()
  }
}