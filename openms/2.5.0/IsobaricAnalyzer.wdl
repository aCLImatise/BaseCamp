version 1.0

task IsobaricAnalyzer {
  input {
    String typeType
    File inIn
    File outOut
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean extractionExtraction
    Boolean itraq4plexItraq4plex
    Boolean itraq8plexItraq8plex
    Boolean quantificationQuantification
    Boolean tmt10plexTmt10plex
    Boolean tmt11plexTmt11plex
    Boolean tmt16plexTmt16plex
    Boolean tmt6plexTmt6plex
    Boolean httpHttp
  }
  command <<<
    IsobaricAnalyzer \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- extraction" false="" extractionExtraction} \
      ~{true="- itraq4plex" false="" itraq4plexItraq4plex} \
      ~{true="- itraq8plex" false="" itraq8plexItraq8plex} \
      ~{true="- quantification" false="" quantificationQuantification} \
      ~{true="- tmt10plex" false="" tmt10plexTmt10plex} \
      ~{true="- tmt11plex" false="" tmt11plexTmt11plex} \
      ~{true="- tmt16plex" false="" tmt16plexTmt16plex} \
      ~{true="- tmt6plex" false="" tmt6plexTmt6plex} \
      ~{true="- http" false="" httpHttp}
  >>>
}