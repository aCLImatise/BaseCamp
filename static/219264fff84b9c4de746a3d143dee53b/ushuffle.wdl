version 1.0

task Ushuffle {
  input {
    String sS
    String nN
    String kK
    String seedSeed
    Boolean bB
  }
  command <<<
    ushuffle \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(seedSeed) then ("-seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="-b" false="" bB}
  >>>
}