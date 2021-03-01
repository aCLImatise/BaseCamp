version 1.0

task AssemblePairspyAssemblepass {
  input {
    String assemble_pairs_do_tpy
  }
  command <<<
    AssemblePairs_py assemble_pass \
      ~{assemble_pairs_do_tpy}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assemble_pairs_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}