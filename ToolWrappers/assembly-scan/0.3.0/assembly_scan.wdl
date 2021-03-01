version 1.0

task Assemblyscan {
  input {
    String assembly_summary_do_tpy
    String assembly
  }
  command <<<
    assembly_scan \
      ~{assembly_summary_do_tpy} \
      ~{assembly}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly_summary_do_tpy: ""
    assembly: ""
  }
  output {
    File out_stdout = stdout()
  }
}