version 1.0

task Blosum62fas {
  command <<<
    blosum62_fas
  >>>
  output {
    File out_stdout = stdout()
  }
}