version 1.0

task Fermi2plMag2fmr {
  input {
    Boolean? more_options
    Boolean? options
    Int fermi_two_do_tpl
  }
  command <<<
    fermi2_pl mag2fmr \
      ~{fermi_two_do_tpl} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
    fermi_two_do_tpl: ""
  }
  output {
    File out_stdout = stdout()
  }
}