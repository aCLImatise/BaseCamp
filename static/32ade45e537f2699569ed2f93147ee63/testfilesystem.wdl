version 1.0

task Testfilesystem.sh {
  input {
    String? inIn
    String? outOut
    String? logLog
    Int? sizeSize
    String? waysWays
    Int? intervalIntervalInSeconds
  }
  command <<<
    testfilesystem.sh \
      ~{inIn} \
      ~{outOut} \
      ~{logLog} \
      ~{sizeSize} \
      ~{waysWays} \
      ~{intervalIntervalInSeconds}
  >>>
}