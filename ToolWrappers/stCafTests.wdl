version 1.0

task StCafTests {
  command <<<
    stCafTests
  >>>
  output {
    File out_stdout = stdout()
  }
}