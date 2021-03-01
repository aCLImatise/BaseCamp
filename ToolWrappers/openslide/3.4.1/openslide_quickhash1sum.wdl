version 1.0

task Openslidequickhash1sum {
  command <<<
    openslide_quickhash1sum
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}