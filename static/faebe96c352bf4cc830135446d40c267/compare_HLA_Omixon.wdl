version 1.0

task CompareHLAOmixon.pyOmixonFname {
  input {
    String compare_hla_omix_on_do_tpy
    String? his_at_genotype_fname
    String? omix_on_fname
  }
  command <<<
    compare_HLA_Omixon.py omixon_fname \
      ~{compare_hla_omix_on_do_tpy} \
      ~{his_at_genotype_fname} \
      ~{omix_on_fname}
  >>>
  parameter_meta {
    compare_hla_omix_on_do_tpy: ""
    his_at_genotype_fname: ""
    omix_on_fname: ""
  }
}