version 1.0

task Exoniphy {
  input {
    File dataDataPath
    Boolean scoreScore
    String seqnameSeqname
    String idIdPref
    String groupGroupTag
    String aliasAlias
    Boolean noNoCns
    Boolean reflectReflectStrand
    String biasBias
    String sensSensSpec
    String backBackGdTypes
    String cdsCdsTypes
    String signalSignalTypes
    Boolean indelsIndels
    String noNoGaps
    String requireRequireInformative
    String notNotInformative
    Boolean quietQuiet
  }
  command <<<
    exoniphy \
      ~{if defined(dataDataPath) then ("--data-path " +  '"' + dataDataPath + '"') else ""} \
      ~{true="--score" false="" scoreScore} \
      ~{if defined(seqnameSeqname) then ("--seqname " +  '"' + seqnameSeqname + '"') else ""} \
      ~{if defined(idIdPref) then ("--idpref " +  '"' + idIdPref + '"') else ""} \
      ~{if defined(groupGroupTag) then ("--grouptag " +  '"' + groupGroupTag + '"') else ""} \
      ~{if defined(aliasAlias) then ("--alias " +  '"' + aliasAlias + '"') else ""} \
      ~{true="--no-cns" false="" noNoCns} \
      ~{true="--reflect-strand" false="" reflectReflectStrand} \
      ~{if defined(biasBias) then ("--bias " +  '"' + biasBias + '"') else ""} \
      ~{if defined(sensSensSpec) then ("--sens-spec " +  '"' + sensSensSpec + '"') else ""} \
      ~{if defined(backBackGdTypes) then ("--backgd-types " +  '"' + backBackGdTypes + '"') else ""} \
      ~{if defined(cdsCdsTypes) then ("--cds-types " +  '"' + cdsCdsTypes + '"') else ""} \
      ~{if defined(signalSignalTypes) then ("--signal-types " +  '"' + signalSignalTypes + '"') else ""} \
      ~{true="--indels" false="" indelsIndels} \
      ~{if defined(noNoGaps) then ("--no-gaps " +  '"' + noNoGaps + '"') else ""} \
      ~{if defined(requireRequireInformative) then ("--require-informative " +  '"' + requireRequireInformative + '"') else ""} \
      ~{if defined(notNotInformative) then ("--not-informative " +  '"' + notNotInformative + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}