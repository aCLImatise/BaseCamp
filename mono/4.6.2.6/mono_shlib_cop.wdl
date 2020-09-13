version 1.0

task Monoshlibcop {
  command <<<
    mono_shlib_cop
  >>>
  output {
    File out_stdout = stdout()
  }
}