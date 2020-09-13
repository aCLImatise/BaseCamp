version 1.0

task Openslidequickhash1sum {
  command <<<
    openslide_quickhash1sum
  >>>
  output {
    File out_stdout = stdout()
  }
}