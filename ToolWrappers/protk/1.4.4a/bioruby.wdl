version 1.0

task Bioruby {
  command <<<
    bioruby
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}