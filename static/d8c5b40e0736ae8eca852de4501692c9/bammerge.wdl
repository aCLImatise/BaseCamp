version 1.0

task Bammerge {
  command <<<
    bammerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}