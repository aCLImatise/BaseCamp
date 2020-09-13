version 1.0

task DendroR {
  command <<<
    dendro_R
  >>>
  output {
    File out_stdout = stdout()
  }
}