version 1.0

task MargeInitRegions {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init regions \
      ~{directoryDirectory}
  >>>
}