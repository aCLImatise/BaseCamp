version 1.0

task Bamadapterclip {
  command <<<
    bamadapterclip
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}