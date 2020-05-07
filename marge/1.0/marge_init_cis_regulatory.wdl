version 1.0

task MargeInitCisRegulatory {
  input {
    Directory? directoryDirectory
  }
  command <<<
    marge init cis-regulatory \
      ~{directoryDirectory}
  >>>
}