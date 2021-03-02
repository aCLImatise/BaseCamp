version 1.0

task PrepNucProtSetForTrinotateLoadingpl {
  command <<<
    prep_nuc_prot_set_for_trinotate_loading_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}