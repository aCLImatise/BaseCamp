version 1.0

task Smudgeplotpy {
  command <<<
    smudgeplot_py
  >>>
  output {
    File out_stdout = stdout()
  }
}