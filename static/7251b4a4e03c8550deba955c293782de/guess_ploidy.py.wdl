version 1.0

task Guessploidypy {
  command <<<
    guess_ploidy_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}