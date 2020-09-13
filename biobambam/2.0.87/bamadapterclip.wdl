version 1.0

task Bamadapterclip {
  command <<<
    bamadapterclip
  >>>
  output {
    File out_stdout = stdout()
  }
}