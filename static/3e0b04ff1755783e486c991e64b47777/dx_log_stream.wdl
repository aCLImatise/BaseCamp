version 1.0

task DxLogStream {
  input {
    String levelLevel
    String sourceSource
  }
  command <<<
    dx-log-stream \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""}
  >>>
}