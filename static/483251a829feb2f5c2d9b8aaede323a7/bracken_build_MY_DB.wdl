version 1.0

task BrackenbuildMYDB {
  command <<<
    bracken_build MY_DB
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}