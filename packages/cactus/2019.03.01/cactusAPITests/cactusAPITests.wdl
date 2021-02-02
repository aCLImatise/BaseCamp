version 1.0

task CactusAPITests {
  command <<<
    cactusAPITests
  >>>
  output {
    File out_stdout = stdout()
  }
}