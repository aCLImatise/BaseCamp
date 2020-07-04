version 1.0

task AssemblePairs.pyAssembleFail {
  input {
    String assemble_pairs_do_tpy
  }
  command <<<
    AssemblePairs.py assemble-fail \
      ~{assemble_pairs_do_tpy}
  >>>
  parameter_meta {
    assemble_pairs_do_tpy: ""
  }
}