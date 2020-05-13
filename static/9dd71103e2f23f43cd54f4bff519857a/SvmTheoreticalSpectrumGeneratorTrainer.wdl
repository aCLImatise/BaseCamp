version 1.0

task SvmTheoreticalSpectrumGeneratorTrainer {
  input {
    File inInSpectra
    File inInIdentifications
    File modelModelOutputFile
    Int precursorPrecursorCharge
    Boolean writeWriteTrainingFiles
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
    Boolean httpHttp
  }
  command <<<
    SvmTheoreticalSpectrumGeneratorTrainer \
      ~{if defined(inInSpectra) then ("-in_spectra " +  '"' + inInSpectra + '"') else ""} \
      ~{if defined(inInIdentifications) then ("-in_identifications " +  '"' + inInIdentifications + '"') else ""} \
      ~{if defined(modelModelOutputFile) then ("-model_output_file " +  '"' + modelModelOutputFile + '"') else ""} \
      ~{if defined(precursorPrecursorCharge) then ("-precursor_charge " +  '"' + precursorPrecursorCharge + '"') else ""} \
      ~{true="-write_training_files" false="" writeWriteTrainingFiles} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp} \
      ~{true="- http" false="" httpHttp}
  >>>
}