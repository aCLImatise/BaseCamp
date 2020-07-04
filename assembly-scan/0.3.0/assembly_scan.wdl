version 1.0

task AssemblyScan {
  input {
    String assembly_summary_do_tpy
    String assembly
  }
  command <<<
    assembly-scan \
      ~{assembly_summary_do_tpy} \
      ~{assembly}
  >>>
  parameter_meta {
    assembly_summary_do_tpy: ""
    assembly: ""
  }
}