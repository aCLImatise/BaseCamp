version 1.0

task Maffthomologsrb {
  command <<<
    mafft_homologs_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}