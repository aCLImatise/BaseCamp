version 1.0

task SnaptoolsSnapDel {
  input {
    String snapSnapFile
    String sessionSessionName
  }
  command <<<
    snaptools snap-del \
      ~{if defined(snapSnapFile) then ("--snap-file " +  '"' + snapSnapFile + '"') else ""} \
      ~{if defined(sessionSessionName) then ("--session-name " +  '"' + sessionSessionName + '"') else ""}
  >>>
}