version 1.0

task CactusHalGeneratorTests {
  command <<<
    cactus_halGeneratorTests
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}