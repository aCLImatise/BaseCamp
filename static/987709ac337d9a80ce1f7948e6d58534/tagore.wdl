version 1.0

task Tagore {
  input {
    String inputInput
    Boolean pP
    Boolean bB
    Boolean forceForce
    Boolean ofOfMt
    Boolean verboseVerbose
  }
  command <<<
    tagore \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-b" false="" bB} \
      ~{true="--force" false="" forceForce} \
      ~{true="-ofmt" false="" ofOfMt} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}