version 1.0

task Bamtofastq {
  command <<<
    bamtofastq
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}