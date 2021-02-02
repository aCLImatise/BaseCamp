version 1.0

task Bamtofastq {
  command <<<
    bamtofastq
  >>>
  output {
    File out_stdout = stdout()
  }
}