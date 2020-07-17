version 1.0

task HalSynteny {
  input {
    String hal_file
    String out_psl_path
  }
  command <<<
    halSynteny \
      ~{hal_file} \
      ~{out_psl_path}
  >>>
  parameter_meta {
    hal_file: ""
    out_psl_path: ""
  }
}