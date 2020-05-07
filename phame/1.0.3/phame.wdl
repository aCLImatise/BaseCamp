version 1.0

task Phame {
  input {
    String? controlControlFile
  }
  command <<<
    phame \
      ~{controlControlFile}
  >>>
}