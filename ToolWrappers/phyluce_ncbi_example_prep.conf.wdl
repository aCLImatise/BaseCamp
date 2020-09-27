version 1.0

task PhyluceNcbiExampleprepconf {
  command <<<
    phyluce_ncbi_example_prep_conf
  >>>
  output {
    File out_stdout = stdout()
  }
}