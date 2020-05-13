version 1.0

task MargeInitFree {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init free \
      ~{directoryDirectory}
  >>>
}