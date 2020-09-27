version 1.0

task Patchhmmpl {
  command <<<
    patch_hmm_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}