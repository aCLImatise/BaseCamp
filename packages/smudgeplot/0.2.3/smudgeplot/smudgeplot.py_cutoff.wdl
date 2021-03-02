version 1.0

task SmudgeplotpyCutoff {
  command <<<
    smudgeplot_py cutoff
  >>>
  output {
    File out_stdout = stdout()
  }
}