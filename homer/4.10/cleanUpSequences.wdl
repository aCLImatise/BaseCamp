version 1.0

task CleanUpSequences.pl {
  input {
    Boolean maxMax
  }
  command <<<
    cleanUpSequences.pl \
      ~{true="-max" false="" maxMax}
  >>>
}