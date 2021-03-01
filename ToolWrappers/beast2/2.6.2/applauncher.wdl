version 1.0

task Applauncher {
  input {
    Boolean? list
    String app_launcher
  }
  command <<<
    applauncher \
      ~{app_launcher} \
      ~{if (list) then "-list" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: ""
    app_launcher: "applauncher -help"
  }
  output {
    File out_stdout = stdout()
  }
}