version 1.0

task Guessploidypy {
  command <<<
    guess_ploidy_py
  >>>
  output {
    File out_stdout = stdout()
  }
}