version 1.0

task AddCNSToStore {
  input {
    Boolean? path
    Boolean? prefix
  }
  command <<<
    addCNSToStore \
      ~{if (path) then "-path" else ""} \
      ~{if (prefix) then "-prefix" else ""}
  >>>
  parameter_meta {
    path: "Path to smrtportal installation. Required if smrtportal is not in path."
    prefix: "Prefix for stores to write to"
  }
  output {
    File out_stdout = stdout()
  }
}