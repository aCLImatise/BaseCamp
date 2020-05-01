version 1.0

task MzMLSplitter {
  input {
    File inIn
    File outOut
    String partsParts
    String sizeSize
    String unitUnit
    Boolean noNoChrom
    Boolean noNoSpec
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MzMLSplitter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(partsParts) then ("-parts " +  '"' + partsParts + '"') else ""} \
      ~{if defined(sizeSize) then ("-size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(unitUnit) then ("-unit " +  '"' + unitUnit + '"') else ""} \
      ~{true="-no_chrom" false="" noNoChrom} \
      ~{true="-no_spec" false="" noNoSpec} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}