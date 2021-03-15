version 1.0

task WriteStrainFastapyOutbase {
  input {
    String write_strain_fasta_do_tpy
    String fast_a
    String tau_star_file
    String et_as_file
    String out_base
  }
  command <<<
    write_strain_fasta_py outbase \
      ~{write_strain_fasta_do_tpy} \
      ~{fast_a} \
      ~{tau_star_file} \
      ~{et_as_file} \
      ~{out_base}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_strain_fasta_do_tpy: ""
    fast_a: ""
    tau_star_file: ""
    et_as_file: ""
    out_base: ""
  }
  output {
    File out_stdout = stdout()
  }
}