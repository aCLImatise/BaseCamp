version 1.0

task Jasminejar {
  command <<<
    jasmine_jar
  >>>
  output {
    File out_stdout = stdout()
  }
}