version 1.0

task SsuEslSfetch {
  input {
    String oO
    Boolean oO
    String nN
    Boolean rR
    String inInFormat
    Boolean tabTabFile
    Boolean shortShortName
    String tmTmIn
    String emaxEmax
  }
  command <<<
    ssu-esl-sfetch \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-O" false="" oO} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--tabfile" false="" tabTabFile} \
      ~{true="--shortname" false="" shortShortName} \
      ~{if defined(tmTmIn) then ("--Tmin " +  '"' + tmTmIn + '"') else ""} \
      ~{if defined(emaxEmax) then ("--Emax " +  '"' + emaxEmax + '"') else ""}
  >>>
}