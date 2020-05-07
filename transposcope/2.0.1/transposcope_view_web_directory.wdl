version 1.0

task TransposcopeViewWebDirectory {
  input {
    String? webWebDirectory
  }
  command <<<
    transposcope view web_directory \
      ~{webWebDirectory}
  >>>
}