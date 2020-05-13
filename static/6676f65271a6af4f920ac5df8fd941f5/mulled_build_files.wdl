version 1.0

task MulledBuildFiles {
  input {
    String? commandCommand
    File? filesFiles
  }
  command <<<
    mulled-build-files \
      ~{commandCommand} \
      ~{filesFiles}
  >>>
}