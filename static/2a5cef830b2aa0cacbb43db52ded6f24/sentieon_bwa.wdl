version 1.0

task Sentieonbwa {
  command <<<
    sentieon_bwa
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}