version 1.0

task Elandexport2bed {
  command <<<
    elandexport2bed
  >>>
  output {
    File out_stdout = stdout()
  }
}