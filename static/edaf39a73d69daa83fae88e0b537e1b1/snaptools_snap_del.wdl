version 1.0

task SnaptoolsSnapDel {
  input {
    String? snap_file
    String? session_name
  }
  command <<<
    snaptools snap-del \
      ~{if defined(snap_file) then ("--snap-file " +  '"' + snap_file + '"') else ""} \
      ~{if defined(session_name) then ("--session-name " +  '"' + session_name + '"') else ""}
  >>>
  parameter_meta {
    snap_file: "snap file. (default: None)"
    session_name: "session to be deleted in snap file. 'AM': cell-by-bin matrix. All cell-by-bin matrices will be removed. 'PM': cell-by-peak matrix. 'GM': cell-by-gene matrix. (default: None)"
  }
}