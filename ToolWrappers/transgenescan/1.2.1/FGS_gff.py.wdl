version 1.0

task FGSGffpy {
  command <<<
    FGS_gff_py
  >>>
  output {
    File out_stdout = stdout()
  }
}