version 1.0

task TailLinesFile {
  input {
    String? tailTail
  }
  command <<<
    tailLines file \
      ~{tailTail}
  >>>
}