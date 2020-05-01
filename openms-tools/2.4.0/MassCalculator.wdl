version 1.0

task MassCalculator {
  input {
    File inIn
    String inInSeq
    File outOut
    String chargeCharge
    String formatFormat
    Boolean averageAverageMass
    String fragmentFragmentType
    String separatorSeparator
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MassCalculator \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInSeq) then ("-in_seq " +  '"' + inInSeq + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(chargeCharge) then ("-charge " +  '"' + chargeCharge + '"') else ""} \
      ~{if defined(formatFormat) then ("-format " +  '"' + formatFormat + '"') else ""} \
      ~{true="-average_mass" false="" averageAverageMass} \
      ~{if defined(fragmentFragmentType) then ("-fragment_type " +  '"' + fragmentFragmentType + '"') else ""} \
      ~{if defined(separatorSeparator) then ("-separator " +  '"' + separatorSeparator + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}