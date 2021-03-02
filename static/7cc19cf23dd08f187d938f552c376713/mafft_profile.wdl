version 1.0

task Mafftprofile {
  command <<<
    mafft_profile
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}