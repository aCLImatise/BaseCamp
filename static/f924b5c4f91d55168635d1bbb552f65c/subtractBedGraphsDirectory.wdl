version 1.0

task SubtractBedGraphsDirectory.pl {
  input {
    String prefixPrefix
    Boolean centerCenter
  }
  command <<<
    subtractBedGraphsDirectory.pl \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="-center" false="" centerCenter}
  >>>
}