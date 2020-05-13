version 1.0

task TransposcopeViewView {
  input {
    String? webWebDirectory
  }
  command <<<
    transposcope view view \
      ~{webWebDirectory}
  >>>
}