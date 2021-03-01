version 1.0

task CompareHLApyUtswFname {
  input {
    String compare_hla_do_tpy
    String? his_at_genotype_fname
    String? ut_sw_fname
  }
  command <<<
    compare_HLA_py utsw_fname \
      ~{compare_hla_do_tpy} \
      ~{his_at_genotype_fname} \
      ~{ut_sw_fname}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compare_hla_do_tpy: ""
    his_at_genotype_fname: ""
    ut_sw_fname: ""
  }
  output {
    File out_stdout = stdout()
  }
}