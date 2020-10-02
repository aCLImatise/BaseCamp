version 1.0

task QuasitoolsDnds {
  input {
    File? _help_show
    String csv
    String reference
    String offset
  }
  command <<<
    quasitools dnds \
      ~{csv} \
      ~{reference} \
      ~{offset} \
      ~{if defined(_help_show) then ("--output " +  '"' + _help_show + '"') else ""}
  >>>
  parameter_meta {
    _help_show: "--help                 Show this message and exit.\\n"
    csv: ""
    reference: ""
    offset: ""
  }
  output {
    File out_stdout = stdout()
  }
}