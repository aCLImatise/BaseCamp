version 1.0

task Tigmintmake {
  command <<<
    tigmint_make
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}