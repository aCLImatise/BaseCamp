version 1.0

task FindRepeats.pl {
  input {
    Boolean minMinLength
    Boolean minMinPid
    Boolean keepKeepTemp
  }
  command <<<
    find-repeats.pl \
      ~{true="--min-length" false="" minMinLength} \
      ~{true="--min-pid" false="" minMinPid} \
      ~{true="--keep-temp" false="" keepKeepTemp}
  >>>
}