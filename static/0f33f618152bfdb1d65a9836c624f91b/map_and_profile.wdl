version 1.0

task MapAndProfile.py {
  input {
    String dbDb
    String dbDbInfo
    String inputInputType
    Boolean lengthLengthNormalize
    Boolean lowLowMem
    Int minMinAbundance
    Boolean rankRankRenormalize
    String outputOutput
    String pctPctId
    Boolean noNoQuantifyUnmapped
    String readReadCutOff
    String sampleSampleId
    String threadsThreads
    Boolean verboseVerbose
    String? inInFiles
    String? dataData
  }
  command <<<
    map_and_profile.py \
      ~{inInFiles} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(dbDbInfo) then ("--dbinfo " +  '"' + dbDbInfo + '"') else ""} \
      ~{if defined(inputInputType) then ("--input_type " +  '"' + inputInputType + '"') else ""} \
      ~{true="--length_normalize" false="" lengthLengthNormalize} \
      ~{true="--low_mem" false="" lowLowMem} \
      ~{if defined(minMinAbundance) then ("--min_abundance " +  '"' + minMinAbundance + '"') else ""} \
      ~{true="--rank_renormalize" false="" rankRankRenormalize} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(pctPctId) then ("--pct_id " +  '"' + pctPctId + '"') else ""} \
      ~{true="--no_quantify_unmapped" false="" noNoQuantifyUnmapped} \
      ~{if defined(readReadCutOff) then ("--read_cutoff " +  '"' + readReadCutOff + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sampleID " +  '"' + sampleSampleId + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{dataData}
  >>>
}