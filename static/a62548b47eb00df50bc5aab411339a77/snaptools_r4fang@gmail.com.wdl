version 1.0

task SnaptoolsR4fanggmailcom {
  input {
    String snap_tools
  }
  command <<<
    snaptools r4fang_gmail_com \
      ~{snap_tools}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    snap_tools: ""
  }
  output {
    File out_stdout = stdout()
  }
}