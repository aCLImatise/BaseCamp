version 1.0

task Haphpipe {
  command <<<
    haphpipe
  >>>
  output {
    File out_stdout = stdout()
  }
}