version 1.0

task CheckvCompleteness {
  input {
    File dD
    Int tT
    Boolean restartRestart
    Boolean quietQuiet
    String? inputInput
    String? outputOutput
  }
  command <<<
    checkv completeness \
      ~{inputInput} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="--restart" false="" restartRestart} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{outputOutput}
  >>>
}