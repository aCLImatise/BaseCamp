version 1.0

task Scalac {
  input {
    String source_files
  }
  command <<<
    scalac \
      ~{source_files}
  >>>
  parameter_meta {
    source_files: ""
  }
}