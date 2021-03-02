version 1.0

task Mafftprofile {
  command <<<
    mafft_profile
  >>>
  runtime {
    docker: "quay.io/biocontainers/mafft:7.475--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}