version 1.0

task AribaExpandflagOutfile {
  input {
    String ariba
    String expand_flag
    String in_dot_report_dot_tsv
  }
  command <<<
    ariba expandflag outfile \
      ~{ariba} \
      ~{expand_flag} \
      ~{in_dot_report_dot_tsv}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
  parameter_meta {
    ariba: ""
    expand_flag: ""
    in_dot_report_dot_tsv: ""
  }
  output {
    File out_stdout = stdout()
  }
}