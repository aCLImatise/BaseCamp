version 1.0

task CompareHLAOmixonpyOmixonFname {
  input {
    String compare_hla_omix_on_do_tpy
    String? his_at_genotype_fname
    String? omix_on_fname
  }
  command <<<
    compare_HLA_Omixon_py omixon_fname \
      ~{compare_hla_omix_on_do_tpy} \
      ~{his_at_genotype_fname} \
      ~{omix_on_fname}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compare_hla_omix_on_do_tpy: ""
    his_at_genotype_fname: ""
    omix_on_fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}