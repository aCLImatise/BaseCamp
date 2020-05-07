version 1.0

task SelectDb.py {
  input {
    String cCMashResults
    String cutCutOff
    String dbDb
    String dbDbDir
    String dbDbInfoIn
    String dbDbInfoOut
    String inputInputType
    Boolean keepKeepTempFiles
    Boolean strainStrainLevel
    String tempTempDir
    String threadsThreads
    String? readsReads
    String? dataData
  }
  command <<<
    select_db.py \
      ~{readsReads} \
      ~{if defined(cCMashResults) then ("--cmash_results " +  '"' + cCMashResults + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(dbDbDir) then ("--db_dir " +  '"' + dbDbDir + '"') else ""} \
      ~{if defined(dbDbInfoIn) then ("--dbinfo_in " +  '"' + dbDbInfoIn + '"') else ""} \
      ~{if defined(dbDbInfoOut) then ("--dbinfo_out " +  '"' + dbDbInfoOut + '"') else ""} \
      ~{if defined(inputInputType) then ("--input_type " +  '"' + inputInputType + '"') else ""} \
      ~{true="--keep_temp_files" false="" keepKeepTempFiles} \
      ~{true="--strain_level" false="" strainStrainLevel} \
      ~{if defined(tempTempDir) then ("--temp_dir " +  '"' + tempTempDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{dataData}
  >>>
}