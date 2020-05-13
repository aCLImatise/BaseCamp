version 1.0

task Mutmap {
  input {
    Int nN
    Boolean rR
    Boolean cC
    Boolean bB
    Boolean nN
    Boolean oO
    Boolean tT
    Boolean wW
    Boolean sS
    Boolean dD
    Boolean dD
    Boolean nN
    Boolean trimTrim
    Boolean aA
    Boolean trimTrimParams
    Boolean eE
    Boolean memMem
    Boolean qQ
    Boolean qQ
    Boolean cC
    Boolean speciesSpecies
  }
  command <<<
    mutmap \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-b" false="" bB} \
      ~{true="-n" false="" nN} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-w" false="" wW} \
      ~{true="-s" false="" sS} \
      ~{true="-D" false="" dD} \
      ~{true="-d" false="" dD} \
      ~{true="-N" false="" nN} \
      ~{true="--trim" false="" trimTrim} \
      ~{true="-a" false="" aA} \
      ~{true="--trim-params" false="" trimTrimParams} \
      ~{true="-e" false="" eE} \
      ~{true="--mem" false="" memMem} \
      ~{true="-q" false="" qQ} \
      ~{true="-Q" false="" qQ} \
      ~{true="-C" false="" cC} \
      ~{true="--species" false="" speciesSpecies}
  >>>
}