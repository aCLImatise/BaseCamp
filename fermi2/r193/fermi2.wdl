version 1.0

task Fermi2.plMag2fmr {
  input {
    Boolean? options
    Boolean? more_options
    String fermi_two_do_tpl
  }
  command <<<
    fermi2.pl mag2fmr \
      ~{fermi_two_do_tpl} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    options: ""
    more_options: ""
    fermi_two_do_tpl: ""
  }
}