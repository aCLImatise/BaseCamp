version 1.0

task Shedtools {
  command <<<
    shed_tools
  >>>
  output {
    File out_stdout = stdout()
  }
}