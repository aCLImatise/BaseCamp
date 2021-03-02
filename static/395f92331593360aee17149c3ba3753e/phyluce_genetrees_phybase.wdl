version 1.0

task PhyluceGenetreesPhybase {
  command <<<
    phyluce_genetrees_phybase
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}