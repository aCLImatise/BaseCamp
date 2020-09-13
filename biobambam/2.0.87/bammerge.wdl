version 1.0

task Bammerge {
  command <<<
    bammerge
  >>>
  output {
    File out_stdout = stdout()
  }
}