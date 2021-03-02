version 1.0

task Mirtracejar {
  command <<<
    mirtrace_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}