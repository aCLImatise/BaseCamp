version 1.0

task Flowstatlibpy {
  command <<<
    flowstatlib_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}