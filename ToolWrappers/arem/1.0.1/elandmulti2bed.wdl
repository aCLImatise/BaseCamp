version 1.0

task Elandmulti2bed {
  command <<<
    elandmulti2bed
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}