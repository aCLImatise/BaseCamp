version 1.0

task Guessploidypy {
  command <<<
    guess_ploidy_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  output {
    File out_stdout = stdout()
  }
}