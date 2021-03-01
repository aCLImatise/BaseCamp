version 1.0

task Bamadapterfind {
  command <<<
    bamadapterfind
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}