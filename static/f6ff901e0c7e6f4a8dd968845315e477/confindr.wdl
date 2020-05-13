version 1.0

task Confindr.py {
  input {
    String inputInputDirectory
    String outputOutputName
    String databasesDatabases
    Boolean rmRmLst
    String threadsThreads
    String tmpTmp
    Boolean keepKeepFiles
    String qualityQualityCutOff
    String baseBaseCutOff
    String baseBaseFractionCutOff
    String forwardForwardId
    String reverseReverseId
    String dataDataType
    String xXMx
    String cgmCgmLst
    Boolean fastFastA
    String verbosityVerbosity
    Boolean crossCrossDetails
    Int minMinMatchingHashes
  }
  command <<<
    confindr.py \
      ~{if defined(inputInputDirectory) then ("--input_directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(outputOutputName) then ("--output_name " +  '"' + outputOutputName + '"') else ""} \
      ~{if defined(databasesDatabases) then ("--databases " +  '"' + databasesDatabases + '"') else ""} \
      ~{true="--rmlst" false="" rmRmLst} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{true="--keep_files" false="" keepKeepFiles} \
      ~{if defined(qualityQualityCutOff) then ("--quality_cutoff " +  '"' + qualityQualityCutOff + '"') else ""} \
      ~{if defined(baseBaseCutOff) then ("--base_cutoff " +  '"' + baseBaseCutOff + '"') else ""} \
      ~{if defined(baseBaseFractionCutOff) then ("--base_fraction_cutoff " +  '"' + baseBaseFractionCutOff + '"') else ""} \
      ~{if defined(forwardForwardId) then ("--forward_id " +  '"' + forwardForwardId + '"') else ""} \
      ~{if defined(reverseReverseId) then ("--reverse_id " +  '"' + reverseReverseId + '"') else ""} \
      ~{if defined(dataDataType) then ("--data_type " +  '"' + dataDataType + '"') else ""} \
      ~{if defined(xXMx) then ("--Xmx " +  '"' + xXMx + '"') else ""} \
      ~{if defined(cgmCgmLst) then ("--cgmlst " +  '"' + cgmCgmLst + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--cross_details" false="" crossCrossDetails} \
      ~{if defined(minMinMatchingHashes) then ("--min_matching_hashes " +  '"' + minMinMatchingHashes + '"') else ""}
  >>>
}