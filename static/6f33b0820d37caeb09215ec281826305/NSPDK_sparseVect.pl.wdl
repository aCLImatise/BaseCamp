version 1.0

task NSPDKSparseVectpl {
  command <<<
    NSPDK_sparseVect_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}