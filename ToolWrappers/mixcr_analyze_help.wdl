version 1.0

task MixcrAnalyzeHelp {
  input {
    String scr
    String analyze
    String help
    String? command_dot_dot_dot
  }
  command <<<
    mixcr analyze help \
      ~{scr} \
      ~{analyze} \
      ~{help} \
      ~{command_dot_dot_dot}
  >>>
  parameter_meta {
    scr: ""
    analyze: ""
    help: ""
    command_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}