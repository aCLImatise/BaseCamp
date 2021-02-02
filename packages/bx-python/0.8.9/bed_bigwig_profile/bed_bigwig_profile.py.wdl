version 1.0

task BedBigwigProfilepy {
  command <<<
    bed_bigwig_profile_py
  >>>
  output {
    File out_stdout = stdout()
  }
}