version 1.0

task MSFraggerAdapter {
  input {
    File javaJavaExecutable
    String javaJavaHeapMemory
    File executableExecutable
    File inIn
    File outOut
    File optOptOut
    File databaseDatabase
    Boolean toleranceTolerance
    Boolean toleranceTolerance
    Boolean toleranceTolerance
    Boolean toleranceTolerance
    Boolean toleranceTolerance
    Boolean toleranceTolerance
    Boolean toleranceTolerance
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean digestDigest
    Boolean varmodVarmod
    Boolean varmodVarmod
    Boolean varmodVarmod
    Boolean varmodVarmod
    Boolean varmodVarmod
    Boolean varmodVarmod
    Boolean varmodVarmod
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean spectrumSpectrum
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean searchSearch
    Boolean statStatMod
    Boolean statStatMod
    Boolean statStatMod
    Boolean statStatMod
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MSFraggerAdapter \
      ~{if defined(javaJavaExecutable) then ("-java_executable " +  '"' + javaJavaExecutable + '"') else ""} \
      ~{if defined(javaJavaHeapMemory) then ("-java_heapmemory " +  '"' + javaJavaHeapMemory + '"') else ""} \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(optOptOut) then ("-opt_out " +  '"' + optOptOut + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-tolerance" false="" toleranceTolerance} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-digest" false="" digestDigest} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-varmod" false="" varmodVarmod} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-spectrum" false="" spectrumSpectrum} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-search" false="" searchSearch} \
      ~{true="-statmod" false="" statStatMod} \
      ~{true="-statmod" false="" statStatMod} \
      ~{true="-statmod" false="" statStatMod} \
      ~{true="-statmod" false="" statStatMod} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}