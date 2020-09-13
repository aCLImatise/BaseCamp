version 1.0

task SnaptoolsSnapdel {
  input {
    File? snap_file
    File? session_name
  }
  command <<<
    snaptools snap_del \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""} \
      ~{if defined(session_name) then ("--session-name " +  '"' + session_name + '"') else ""}
  >>>
  parameter_meta {
    snap_file: "snap file. (default: None)"
    session_name: "session to be deleted in snap file. 'AM': cell-by-bin\\nmatrix. All cell-by-bin matrices will be removed.\\n'PM': cell-by-peak matrix. 'GM': cell-by-gene matrix.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}