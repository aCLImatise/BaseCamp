version 1.0

task PortcullisRuleFilter {
  input {
    String script
    String to
    String automate
    String csv
    String filtering
    String based
    String on
    String a
    String json
    String configuration_dot
  }
  command <<<
    portcullis_rule_filter \
      ~{script} \
      ~{to} \
      ~{automate} \
      ~{csv} \
      ~{filtering} \
      ~{based} \
      ~{on} \
      ~{a} \
      ~{json} \
      ~{configuration_dot}
  >>>
  parameter_meta {
    script: ""
    to: ""
    automate: ""
    csv: ""
    filtering: ""
    based: ""
    on: ""
    a: ""
    json: ""
    configuration_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}