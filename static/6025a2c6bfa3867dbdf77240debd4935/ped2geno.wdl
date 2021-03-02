version 1.0

task Ped2geno {
  command <<<
    ped2geno
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}