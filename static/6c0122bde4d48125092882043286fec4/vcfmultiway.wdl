version 1.0

task Vcfmultiway {
  command <<<
    vcfmultiway
  >>>
  output {
    File out_stdout = stdout()
  }
}