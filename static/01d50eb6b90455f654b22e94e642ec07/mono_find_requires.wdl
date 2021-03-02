version 1.0

task Monofindrequires {
  command <<<
    mono_find_requires
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}