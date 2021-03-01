version 1.0

task ParseFDROPeptidepy {
  command <<<
    parseFDR_o_peptide_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}