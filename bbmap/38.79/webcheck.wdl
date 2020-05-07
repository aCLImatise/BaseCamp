version 1.0

task Webcheck.sh {
  input {
    String? inputInputFiles
  }
  command <<<
    webcheck.sh \
      ~{inputInputFiles}
  >>>
}