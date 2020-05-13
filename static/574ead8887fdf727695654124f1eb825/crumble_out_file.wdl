version 1.0

task CrumbleOutFile {
  input {
    String? inInFile
    String? outOutFile
  }
  command <<<
    crumble out-file \
      ~{inInFile} \
      ~{outOutFile}
  >>>
}