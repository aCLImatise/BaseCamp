version 1.0

task ExternalCalibration {
  input {
    File inIn
    File outOut
    Boolean offsetOffset
    Boolean slopeSlope
    Boolean powerPower
    String msMsLevel
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    ExternalCalibration \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-offset" false="" offsetOffset} \
      ~{true="-slope" false="" slopeSlope} \
      ~{true="-power" false="" powerPower} \
      ~{if defined(msMsLevel) then ("-ms_level " +  '"' + msMsLevel + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}