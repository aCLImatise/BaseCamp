version 1.0

task Bamtagconversion {
  command <<<
    bamtagconversion
  >>>
  output {
    File out_stdout = stdout()
  }
}