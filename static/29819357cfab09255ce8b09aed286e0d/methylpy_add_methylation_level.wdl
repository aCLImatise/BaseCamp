version 1.0

task MethylpyAddMethylationLevel {
  input {
    String inputInputTsvFile
    String outputOutputFile
    Array[String]+ allAllCFiles
    Array[String]+ samplesSamples
    Array[String]+ mcMcType
    String extraExtraInfo
    String numNumProcs
    Int minMinCov
    Int maxMaxCov
    String bufferBufferLineNumber
    String inputInputNoHeader
  }
  command <<<
    methylpy add-methylation-level \
      ~{if defined(inputInputTsvFile) then ("--input-tsv-file " +  '"' + inputInputTsvFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(allAllCFiles) then ("--allc-files " +  '"' + allAllCFiles + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(mcMcType) then ("--mc-type " +  '"' + mcMcType + '"') else ""} \
      ~{if defined(extraExtraInfo) then ("--extra-info " +  '"' + extraExtraInfo + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(bufferBufferLineNumber) then ("--buffer-line-number " +  '"' + bufferBufferLineNumber + '"') else ""} \
      ~{if defined(inputInputNoHeader) then ("--input-no-header " +  '"' + inputInputNoHeader + '"') else ""}
  >>>
}