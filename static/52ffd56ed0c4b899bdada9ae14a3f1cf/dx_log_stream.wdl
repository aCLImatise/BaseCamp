version 1.0

task DxLogStream {
  input {
    String? level
    String? source
  }
  command <<<
    dx-log-stream \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  parameter_meta {
    level: "Logging level to use"
    source: "Source ID to use"
  }
}