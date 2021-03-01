version 1.0

task FGSGffpy {
  command <<<
    FGS_gff_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}