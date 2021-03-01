version 1.0

task Elandresult2bed {
  command <<<
    elandresult2bed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}