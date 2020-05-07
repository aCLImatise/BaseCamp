version 1.0

task Fs {
  input {
    Boolean goGo
    File importImport
    File createCreateId
  }
  command <<<
    fs \
      ~{true="-go" false="" goGo} \
      ~{if defined(importImport) then ("-import " +  '"' + importImport + '"') else ""} \
      ~{if defined(createCreateId) then ("-createid " +  '"' + createCreateId + '"') else ""}
  >>>
}