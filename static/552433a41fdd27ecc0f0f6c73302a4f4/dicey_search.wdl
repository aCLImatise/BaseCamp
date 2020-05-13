version 1.0

task DiceySearch {
  input {
    Boolean gG
    Boolean iI
    Boolean oO
    Boolean kK
    Boolean mM
    Boolean xX
    Boolean dD
    Boolean qQ
    Boolean nN
    Boolean cC
    Boolean lL
    String cutCutOffPenalty
    String penaltyPenaltyTmDiff
    String penaltyPenaltyTmMismatch
    String penaltyPenaltyLength
    String entEntTemp
    String monovalentMonovalent
    String divalentDivalent
    String dnaDna
    String dntpDntp
    String? optionsOptions
    String? sequencesSequencesFastA
  }
  command <<<
    dicey search \
      ~{optionsOptions} \
      ~{true="-g" false="" gG} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-k" false="" kK} \
      ~{true="-m" false="" mM} \
      ~{true="-x" false="" xX} \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-n" false="" nN} \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{if defined(cutCutOffPenalty) then ("--cutoffPenalty " +  '"' + cutCutOffPenalty + '"') else ""} \
      ~{if defined(penaltyPenaltyTmDiff) then ("--penaltyTmDiff " +  '"' + penaltyPenaltyTmDiff + '"') else ""} \
      ~{if defined(penaltyPenaltyTmMismatch) then ("--penaltyTmMismatch " +  '"' + penaltyPenaltyTmMismatch + '"') else ""} \
      ~{if defined(penaltyPenaltyLength) then ("--penaltyLength " +  '"' + penaltyPenaltyLength + '"') else ""} \
      ~{if defined(entEntTemp) then ("--enttemp " +  '"' + entEntTemp + '"') else ""} \
      ~{if defined(monovalentMonovalent) then ("--monovalent " +  '"' + monovalentMonovalent + '"') else ""} \
      ~{if defined(divalentDivalent) then ("--divalent " +  '"' + divalentDivalent + '"') else ""} \
      ~{if defined(dnaDna) then ("--dna " +  '"' + dnaDna + '"') else ""} \
      ~{if defined(dntpDntp) then ("--dntp " +  '"' + dntpDntp + '"') else ""} \
      ~{sequencesSequencesFastA}
  >>>
}