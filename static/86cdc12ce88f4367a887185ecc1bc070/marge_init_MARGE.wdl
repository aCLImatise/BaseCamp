version 1.0

task MargeInitMARGE {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init MARGE \
      ~{directoryDirectory}
  >>>
}