version 1.0

task PhyluceGenetreesPhybase {
  command <<<
    phyluce_genetrees_phybase
  >>>
  output {
    File out_stdout = stdout()
  }
}