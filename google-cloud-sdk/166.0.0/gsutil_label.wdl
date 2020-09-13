version 1.0

task GsutilLabel {
  input {
    String? value
    String? d
    String command_dot
  }
  command <<<
    gsutil label \
      ~{command_dot} \
      ~{if defined(value) then ("-l " +  '"' + value + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  parameter_meta {
    value: ":<value>"
    d: ""
    command_dot: "SET"
  }
  output {
    File out_stdout = stdout()
  }
}