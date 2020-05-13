version 1.0

task CrumbleInFile {
  input {
    String? outOutFile
  }
  command <<<
    crumble in-file \
      ~{outOutFile}
  >>>
}