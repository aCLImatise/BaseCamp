version 1.0

task Mirtracejar {
  command <<<
    mirtrace_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}