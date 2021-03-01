version 1.0

task Elandexport2bed {
  command <<<
    elandexport2bed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}