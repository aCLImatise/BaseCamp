version 1.0

task Snakemakebashcompletion {
  command <<<
    snakemake_bash_completion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}