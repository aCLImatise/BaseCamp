version 1.0

task LofreqPlpsummary {
  input {
    Boolean fF
    Boolean oO
    Boolean rR
    Boolean lL
    Boolean qQ
    Boolean qQ
    Boolean rR
    Boolean jJ
    Boolean jJ
    Boolean kK
    Boolean bB
    Boolean aA
    Boolean dD
    Boolean eE
    Boolean mM
    Boolean mM
    Boolean nN
    Boolean callCallIndels
    Boolean onlyOnlyIndels
    Boolean sS
    Boolean sS
    Boolean tT
    Boolean aA
    Boolean bB
    Boolean cC
    Boolean dD
    String? callCall
    String? inInBam
  }
  command <<<
    lofreq plpsummary \
      ~{callCall} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-q" false="" qQ} \
      ~{true="-Q" false="" qQ} \
      ~{true="-R" false="" rR} \
      ~{true="-j" false="" jJ} \
      ~{true="-J" false="" jJ} \
      ~{true="-K" false="" kK} \
      ~{true="-B" false="" bB} \
      ~{true="-A" false="" aA} \
      ~{true="-D" false="" dD} \
      ~{true="-e" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-M" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="--call-indels" false="" callCallIndels} \
      ~{true="--only-indels" false="" onlyOnlyIndels} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-C" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{inInBam}
  >>>
}