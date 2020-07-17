version 1.0

task CleanUpSequences.pl {
  input {
    Boolean? max
  }
  command <<<
    cleanUpSequences.pl \
      ~{true="-max" false="" max}
  >>>
  parameter_meta {
    max: "# and -min # removes sequences that are longer than max and shorter than min(optional)"
  }
}