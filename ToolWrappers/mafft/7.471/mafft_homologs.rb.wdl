version 1.0

task Maffthomologsrb {
  command <<<
    mafft_homologs_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}