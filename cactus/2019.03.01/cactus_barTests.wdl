version 1.0

task CactusBarTests {
  command <<<
    cactus_barTests
  >>>
  output {
    File out_stdout = stdout()
  }
}