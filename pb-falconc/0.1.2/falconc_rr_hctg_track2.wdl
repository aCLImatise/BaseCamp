version 1.0

task FalconcRrHctgTrack2 {
  input {
    Boolean helpHelpSyntax
    Boolean testTest
    Boolean rR
    Boolean pP
    Boolean oO
    Boolean bB
    Boolean nN
    Boolean phasedPhasedReadFile
    Boolean rawRawReadIds
    Boolean mM
    Boolean streamStream
    Boolean debugDebug
    Boolean silentSilent
  }
  command <<<
    falconc rr-hctg-track2 \
      ~{true="--help-syntax" false="" helpHelpSyntax} \
      ~{true="--test" false="" testTest} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="-b" false="" bB} \
      ~{true="-n" false="" nN} \
      ~{true="--phased-read-file" false="" phasedPhasedReadFile} \
      ~{true="--rawread-ids" false="" rawRawReadIds} \
      ~{true="-m" false="" mM} \
      ~{true="--stream" false="" streamStream} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent}
  >>>
}