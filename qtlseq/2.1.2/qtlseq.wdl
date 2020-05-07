version 1.0

task Qtlseq {
  input {
    Boolean rR
    Boolean pP
    Boolean b1B1
    Boolean b2B2
    Boolean n1N1
    Boolean n2N2
    Boolean oO
    Boolean fF
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
    qtlseq \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP} \
      ~{true="-b1" false="" b1B1} \
      ~{true="-b2" false="" b2B2} \
      ~{true="-n1" false="" n1N1} \
      ~{true="-n2" false="" n2N2} \
      ~{true="-o" false="" oO} \
      ~{true="-F" false="" fF} \
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