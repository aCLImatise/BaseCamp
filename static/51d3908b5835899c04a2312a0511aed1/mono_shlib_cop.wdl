version 1.0

task Monoshlibcop {
  command <<<
    mono_shlib_cop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}