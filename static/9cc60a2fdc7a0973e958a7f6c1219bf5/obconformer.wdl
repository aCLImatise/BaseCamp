version 1.0

task Obconformer {
  command <<<
    obconformer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}