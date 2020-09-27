version 1.0

task Removebadhaplocish {
  command <<<
    remove_bad_hap_loci_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}