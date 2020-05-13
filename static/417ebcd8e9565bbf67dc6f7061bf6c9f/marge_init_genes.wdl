version 1.0

task MargeInitGenes {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init genes \
      ~{directoryDirectory}
  >>>
}