version 1.0

task Magpurify {
  command <<<
    magpurify
  >>>
  output {
    File out_stdout = stdout()
  }
}