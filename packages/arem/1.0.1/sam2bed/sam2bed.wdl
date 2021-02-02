version 1.0

task Sam2bed {
  command <<<
    sam2bed
  >>>
  output {
    File out_stdout = stdout()
  }
}