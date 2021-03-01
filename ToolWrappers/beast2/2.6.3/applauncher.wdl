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
    docker: "quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0"
  }
  parameter_meta {
    list: ""
    app_launcher: "applauncher -help"
  }
  output {
    File out_stdout = stdout()
  }
}