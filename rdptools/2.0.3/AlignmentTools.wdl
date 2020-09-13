version 1.0

task AlignmentTools {
  command <<<
    AlignmentTools
  >>>
  output {
    File out_stdout = stdout()
  }
}