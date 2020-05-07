version 1.0

task Dcmodify {
  input {
    Boolean qQ
    Boolean vV
    Boolean dD
    Boolean llLl
    Boolean lcLc
    Boolean tT
    Boolean tdTd
    Boolean teTe
    Boolean tbTb
    Boolean tiTi
    Boolean dcDc
    Boolean nbNb
    Boolean iI
    Boolean ifIf
    Boolean noNoReservCheck
    Boolean mM
    Boolean mfMf
    Boolean maMa
    Boolean eE
    Boolean eaEa
    Boolean epEp
    Boolean genGenStudUid
    Boolean genGenSerUid
    Boolean genGenInstUid
    Boolean noNoMetaUid
    Boolean ieIe
    Boolean ignoreIgnoreMissingTags
    Boolean ignoreIgnoreUnValues
    Boolean fF
    Boolean uU
    Boolean gG
    Boolean leLe
    String? dcmDcmFileIn
  }
  command <<<
    dcmodify \
      ~{dcmDcmFileIn} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD} \
      ~{true="-ll" false="" llLl} \
      ~{true="-lc" false="" lcLc} \
      ~{true="-t" false="" tT} \
      ~{true="-td" false="" tdTd} \
      ~{true="-te" false="" teTe} \
      ~{true="-tb" false="" tbTb} \
      ~{true="-ti" false="" tiTi} \
      ~{true="-dc" false="" dcDc} \
      ~{true="-nb" false="" nbNb} \
      ~{true="-i" false="" iI} \
      ~{true="-if" false="" ifIf} \
      ~{true="--no-reserv-check" false="" noNoReservCheck} \
      ~{true="-m" false="" mM} \
      ~{true="-mf" false="" mfMf} \
      ~{true="-ma" false="" maMa} \
      ~{true="-e" false="" eE} \
      ~{true="-ea" false="" eaEa} \
      ~{true="-ep" false="" epEp} \
      ~{true="--gen-stud-uid" false="" genGenStudUid} \
      ~{true="--gen-ser-uid" false="" genGenSerUid} \
      ~{true="--gen-inst-uid" false="" genGenInstUid} \
      ~{true="--no-meta-uid" false="" noNoMetaUid} \
      ~{true="-ie" false="" ieIe} \
      ~{true="--ignore-missing-tags" false="" ignoreIgnoreMissingTags} \
      ~{true="--ignore-un-values" false="" ignoreIgnoreUnValues} \
      ~{true="-F" false="" fF} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG} \
      ~{true="-le" false="" leLe}
  >>>
}