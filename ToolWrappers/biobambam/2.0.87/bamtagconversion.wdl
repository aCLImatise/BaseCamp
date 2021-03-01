version 1.0

task Bamtagconversion {
  command <<<
    bamtagconversion
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}