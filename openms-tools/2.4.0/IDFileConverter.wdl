version 1.0

task IDFileConverter {
  input {
    Boolean inIn
    File outOut
    String outOutType
    File mzMzFile
    File mzMzName
    Boolean peptidePeptideProphetAnalyzed
    String scoreScoreType
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDFileConverter \
      ~{true="-in" false="" inIn} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutType) then ("-out_type " +  '"' + outOutType + '"') else ""} \
      ~{if defined(mzMzFile) then ("-mz_file " +  '"' + mzMzFile + '"') else ""} \
      ~{if defined(mzMzName) then ("-mz_name " +  '"' + mzMzName + '"') else ""} \
      ~{true="-peptideprophet_analyzed" false="" peptidePeptideProphetAnalyzed} \
      ~{if defined(scoreScoreType) then ("-score_type " +  '"' + scoreScoreType + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}