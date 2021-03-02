version 1.0

task TbvcfreportARGS {
  input {
    String tb_vcf_report
    String var_command
    String? args
  }
  command <<<
    tbvcfreport ARGS \
      ~{tb_vcf_report} \
      ~{var_command} \
      ~{args}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tb_vcf_report: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}