version 1.0

task LibsequenceConfig {
  input {
    String? printPrint
    String? outOut
    String? versionVersion
    String? numberNumber
    String? andAnd
    String? exitExit
  }
  command <<<
    libsequenceConfig \
      ~{printPrint} \
      ~{outOut} \
      ~{versionVersion} \
      ~{numberNumber} \
      ~{andAnd} \
      ~{exitExit}
  >>>
}