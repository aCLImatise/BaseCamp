version 1.0

task MakeExptermpy {
  command <<<
    make_expterm_py
  >>>
  output {
    File out_stdout = stdout()
  }
}