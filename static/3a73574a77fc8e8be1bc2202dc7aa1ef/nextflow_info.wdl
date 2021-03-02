version 1.0

task NextflowInfo {
  input {
    Boolean? check_updates
    Boolean? show_detailed_informationdefault
    Boolean? output_format_yaml
    String info
    String project
    String name
  }
  command <<<
    nextflow info \
      ~{info} \
      ~{project} \
      ~{name} \
      ~{if (check_updates) then "-check-updates" else ""} \
      ~{if (show_detailed_informationdefault) then "-d" else ""} \
      ~{if (output_format_yaml) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    check_updates: "Check for remote updates\\nDefault: false"
    show_detailed_informationdefault: "Show detailed information\\nDefault: false"
    output_format_yaml: "Output format, either: text (default), json, yaml\\n"
    info: ""
    project: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}