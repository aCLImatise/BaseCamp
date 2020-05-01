version 1.0

task SsuEslReformat {
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
    Boolean smallSmall
    String? fastFastA
  }
  command <<<
    ssu-esl-reformat \
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
      ~{true="--small" false="" smallSmall}
  >>>
}