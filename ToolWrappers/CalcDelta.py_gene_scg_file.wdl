version 1.0

task CalcDeltapyGeneScgFile {
  input {
    String calc_delta_do_tpy
    String gene_cov_file
    String gene_scg_file
    String output_stub
  }
  command <<<
    CalcDelta_py gene_scg_file \
      ~{calc_delta_do_tpy} \
      ~{gene_cov_file} \
      ~{gene_scg_file} \
      ~{output_stub}
  >>>
  parameter_meta {
    calc_delta_do_tpy: ""
    gene_cov_file: ""
    gene_scg_file: ""
    output_stub: ""
  }
  output {
    File out_stdout = stdout()
  }
}