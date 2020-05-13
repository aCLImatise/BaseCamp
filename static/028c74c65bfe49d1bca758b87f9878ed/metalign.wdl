version 1.0

task Metalign.py {
  input {
    String cutCutOff
    String dbDbDir
    String dbDbInfoIn
    Boolean keepKeepTempFiles
    String inputInputType
    Boolean lengthLengthNormalize
    Boolean lowLowMem
    Int minMinAbundance
    Boolean noNoQuantifyUnmapped
    String outputOutput
    String pctPctId
    Boolean precisePrecise
    Boolean rankRankRenormalize
    String readReadCutOff
    String sampleSampleId
    Boolean sensitiveSensitive
    Boolean strainStrainLevel
    String tempTempDir
    String threadsThreads
    Boolean verboseVerbose
    String? readsReads
    String? dataData
  }
  command <<<
    metalign.py \
      ~{readsReads} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(dbDbDir) then ("--db_dir " +  '"' + dbDbDir + '"') else ""} \
      ~{if defined(dbDbInfoIn) then ("--dbinfo_in " +  '"' + dbDbInfoIn + '"') else ""} \
      ~{true="--keep_temp_files" false="" keepKeepTempFiles} \
      ~{if defined(inputInputType) then ("--input_type " +  '"' + inputInputType + '"') else ""} \
      ~{true="--length_normalize" false="" lengthLengthNormalize} \
      ~{true="--low_mem" false="" lowLowMem} \
      ~{if defined(minMinAbundance) then ("--min_abundance " +  '"' + minMinAbundance + '"') else ""} \
      ~{true="--no_quantify_unmapped" false="" noNoQuantifyUnmapped} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(pctPctId) then ("--pct_id " +  '"' + pctPctId + '"') else ""} \
      ~{true="--precise" false="" precisePrecise} \
      ~{true="--rank_renormalize" false="" rankRankRenormalize} \
      ~{if defined(readReadCutOff) then ("--read_cutoff " +  '"' + readReadCutOff + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sampleID " +  '"' + sampleSampleId + '"') else ""} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--strain_level" false="" strainStrainLevel} \
      ~{if defined(tempTempDir) then ("--temp_dir " +  '"' + tempTempDir + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{dataData}
  >>>
}