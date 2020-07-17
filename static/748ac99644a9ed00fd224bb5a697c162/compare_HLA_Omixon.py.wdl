version 1.0

task CompareHLAOmixon.py.bakOmixonFname {
  input {
    String compare_hla_omixondotpydotbak
    String? his_at_genotype_fname
    String? omix_on_fname
  }
  command <<<
    compare_HLA_Omixon.py.bak omixon_fname \
      ~{compare_hla_omixondotpydotbak} \
      ~{his_at_genotype_fname} \
      ~{omix_on_fname}
  >>>
  parameter_meta {
    compare_hla_omixondotpydotbak: ""
    his_at_genotype_fname: ""
    omix_on_fname: ""
  }
}