version 1.0

task PhyluceNcbiExampleprepconf {
  command <<<
    phyluce_ncbi_example_prep_conf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}