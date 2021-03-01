version 1.0

task Jasminejar {
  command <<<
    jasmine_jar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}