version 1.0

task Snakemakebashcompletion {
  command <<<
    snakemake_bash_completion
  >>>
  output {
    File out_stdout = stdout()
  }
}