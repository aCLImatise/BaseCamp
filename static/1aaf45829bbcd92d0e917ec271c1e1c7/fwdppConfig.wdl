version 1.0

task FwdppConfig {
  input {
    String? printPrint
    String? outOut
    String? versionVersion
    String? numberNumber
    String? andAnd
    String? exitExit
  }
  command <<<
    fwdppConfig \
      ~{printPrint} \
      ~{outOut} \
      ~{versionVersion} \
      ~{numberNumber} \
      ~{andAnd} \
      ~{exitExit}
  >>>
}