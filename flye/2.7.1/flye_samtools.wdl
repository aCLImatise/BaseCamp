version 1.0

task Flyesamtools {
  command <<<
    flye_samtools
  >>>
  output {
    File out_stdout = stdout()
  }
}