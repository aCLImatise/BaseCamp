version 1.0

task CactusHalGeneratorTests {
  command <<<
    cactus_halGeneratorTests
  >>>
  output {
    File out_stdout = stdout()
  }
}