version 1.0

task Guessploidypy {
  command <<<
    guess_ploidy_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  output {
    File out_stdout = stdout()
  }
}