version 1.0

task TransposcopeViewTranspoScope {
  input {
    String? webWebDirectory
  }
  command <<<
    transposcope view TranspoScope \
      ~{webWebDirectory}
  >>>
}