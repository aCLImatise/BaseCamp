version 1.0

task SpectraSTSearchAdapter {
  input {
    File executableExecutable
    String spectraSpectraFiles
    String outputOutputFiles
    String libraryLibraryFile
    String sequenceSequenceDatabaseFile
    String sequenceSequenceDatabaseType
    String searchSearchFile
    String paramsParamsFile
    String precursorPrecursorMzTolerance
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    SpectraSTSearchAdapter \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(spectraSpectraFiles) then ("-spectra_files " +  '"' + spectraSpectraFiles + '"') else ""} \
      ~{if defined(outputOutputFiles) then ("-output_files " +  '"' + outputOutputFiles + '"') else ""} \
      ~{if defined(libraryLibraryFile) then ("-library_file " +  '"' + libraryLibraryFile + '"') else ""} \
      ~{if defined(sequenceSequenceDatabaseFile) then ("-sequence_database_file " +  '"' + sequenceSequenceDatabaseFile + '"') else ""} \
      ~{if defined(sequenceSequenceDatabaseType) then ("-sequence_database_type " +  '"' + sequenceSequenceDatabaseType + '"') else ""} \
      ~{if defined(searchSearchFile) then ("-search_file " +  '"' + searchSearchFile + '"') else ""} \
      ~{if defined(paramsParamsFile) then ("-params_file " +  '"' + paramsParamsFile + '"') else ""} \
      ~{if defined(precursorPrecursorMzTolerance) then ("-precursor_mz_tolerance " +  '"' + precursorPrecursorMzTolerance + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}