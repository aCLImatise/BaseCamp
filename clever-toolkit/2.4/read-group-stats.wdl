version 1.0

task ReadGroupStats {
  input {
    String? readReadGroupFile
  }
  command <<<
    read-group-stats \
      ~{readReadGroupFile}
  >>>
}