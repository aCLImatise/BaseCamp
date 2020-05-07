version 1.0

task LogolExec.sh {
  input {
    Boolean enabledEnabledUps
    Boolean confConf
    Boolean lmaxLmax
    Boolean outputOutput
    Boolean uidUid
    Boolean lmLmIn
    Boolean noNoClean
    Boolean dnaDna
    Boolean proteinProtein
    Boolean endEnd
    Boolean allAll
    Boolean cC
    Boolean rnaRna
    Boolean offsetOffset
    Boolean maxMax
    Boolean maxMaxSpacer
    Boolean gG
    Boolean hH
    Boolean startStart
    Boolean checkCheck
    Boolean mM
    Boolean sequenceSequenceId
    Boolean filterFilter
    Boolean sS
    Boolean maxMaxRes
    Boolean vV
  }
  command <<<
    LogolExec.sh \
      ~{true="- enabledups" false="" enabledEnabledUps} \
      ~{true="- conf" false="" confConf} \
      ~{true="- lmax" false="" lmaxLmax} \
      ~{true="- output" false="" outputOutput} \
      ~{true="- uid" false="" uidUid} \
      ~{true="- lmin" false="" lmLmIn} \
      ~{true="- noclean" false="" noNoClean} \
      ~{true="- dna" false="" dnaDna} \
      ~{true="- protein" false="" proteinProtein} \
      ~{true="- end" false="" endEnd} \
      ~{true="- all" false="" allAll} \
      ~{true="- c" false="" cC} \
      ~{true="- rna" false="" rnaRna} \
      ~{true="- offset" false="" offsetOffset} \
      ~{true="- max" false="" maxMax} \
      ~{true="- maxspacer" false="" maxMaxSpacer} \
      ~{true="- g" false="" gG} \
      ~{true="- h" false="" hH} \
      ~{true="- start" false="" startStart} \
      ~{true="- check" false="" checkCheck} \
      ~{true="- m" false="" mM} \
      ~{true="- sequenceID" false="" sequenceSequenceId} \
      ~{true="- filter" false="" filterFilter} \
      ~{true="- s" false="" sS} \
      ~{true="- maxres" false="" maxMaxRes} \
      ~{true="- v" false="" vV}
  >>>
}