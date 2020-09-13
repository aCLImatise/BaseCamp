version 1.0

task AribaExpandflagInfile {
  input {
    String ariba
    String expand_flag
    String in_dot_report_dot_tsv
  }
  command <<<
    ariba expandflag infile \
      ~{ariba} \
      ~{expand_flag} \
      ~{in_dot_report_dot_tsv}
  >>>
  parameter_meta {
    ariba: ""
    expand_flag: ""
    in_dot_report_dot_tsv: ""
  }
  output {
    File out_stdout = stdout()
  }
}