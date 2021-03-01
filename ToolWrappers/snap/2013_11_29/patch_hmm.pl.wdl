version 1.0

task Patchhmmpl {
  command <<<
    patch_hmm_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}