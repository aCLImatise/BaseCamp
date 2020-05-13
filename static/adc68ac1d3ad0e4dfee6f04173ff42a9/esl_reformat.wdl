version 1.0

task EslReformat {
  input {
    Boolean dD
    Boolean lL
    Boolean nN
    String oO
    Boolean rR
    Boolean uU
    Boolean xX
    String gapGapSym
    String inInFormat
    Boolean minMinGap
    Boolean keepKeepRf
    Boolean noNoGap
    Boolean wWUsSify
    Boolean deDeWuss
    Boolean fullFullWuss
    String ignoreIgnore
    String acceptAcceptX
    String renameRename
    String replaceReplace
    Boolean smallSmall
    String idIdMap
    String? fastFastA
    String? hmmHmmPgMd
  }
  command <<<
    esl-reformat \
      ~{fastFastA} \
      ~{true="-d" false="" dD} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-x" false="" xX} \
      ~{if defined(gapGapSym) then ("--gapsym " +  '"' + gapGapSym + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--mingap" false="" minMinGap} \
      ~{true="--keeprf" false="" keepKeepRf} \
      ~{true="--nogap" false="" noNoGap} \
      ~{true="--wussify" false="" wWUsSify} \
      ~{true="--dewuss" false="" deDeWuss} \
      ~{true="--fullwuss" false="" fullFullWuss} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(acceptAcceptX) then ("--acceptx " +  '"' + acceptAcceptX + '"') else ""} \
      ~{if defined(renameRename) then ("--rename " +  '"' + renameRename + '"') else ""} \
      ~{if defined(replaceReplace) then ("--replace " +  '"' + replaceReplace + '"') else ""} \
      ~{true="--small" false="" smallSmall} \
      ~{if defined(idIdMap) then ("--id_map " +  '"' + idIdMap + '"') else ""} \
      ~{hmmHmmPgMd}
  >>>
}