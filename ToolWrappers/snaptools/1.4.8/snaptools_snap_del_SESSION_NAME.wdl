version 1.0

task SnaptoolsSnapdelSESSIONNAME {
  input {
    Boolean? session_name
    File? snap_file
    String snap_tools
    String snap_del
  }
  command <<<
    snaptools snap_del SESSION_NAME \
      ~{snap_tools} \
      ~{snap_del} \
      ~{if (session_name) then "--session-name" else ""} \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    session_name: ""
    snap_file: ""
    snap_tools: ""
    snap_del: ""
  }
  output {
    File out_stdout = stdout()
  }
}