version 1.0

task Snakemakebashcompletion {
  command <<<
    snakemake_bash_completion
  >>>
  runtime {
    docker: "quay.io/biocontainers/snakemake-minimal:6.1.0--pyhdfd78af_1"
  }
  output {
    File out_stdout = stdout()
  }
}