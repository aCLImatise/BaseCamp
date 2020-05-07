version 1.0

task MargeInitTo {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init to \
      ~{directoryDirectory}
  >>>
}