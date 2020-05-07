version 1.0

task MethylpyFilterAllc {
  input {
    Array[String]+ allAllCFiles
    Array[String]+ outputOutputFiles
    String numNumProcs
    Array[String]+ mcMcType
    Int minMinCov
    Int maxMaxCov
    Array[Int]+ maxMaxMismatch
    Array[Int]+ maxMaxMismatchFrac
    String compressCompressOutput
    Array[String]+ chromChromS
  }
  command <<<
    methylpy filter-allc \
      ~{if defined(allAllCFiles) then ("--allc-files " +  '"' + allAllCFiles + '"') else ""} \
      ~{if defined(outputOutputFiles) then ("--output-files " +  '"' + outputOutputFiles + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(mcMcType) then ("--mc-type " +  '"' + mcMcType + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxCov) then ("--max-cov " +  '"' + maxMaxCov + '"') else ""} \
      ~{if defined(maxMaxMismatch) then ("--max-mismatch " +  '"' + maxMaxMismatch + '"') else ""} \
      ~{if defined(maxMaxMismatchFrac) then ("--max-mismatch-frac " +  '"' + maxMaxMismatchFrac + '"') else ""} \
      ~{if defined(compressCompressOutput) then ("--compress-output " +  '"' + compressCompressOutput + '"') else ""} \
      ~{if defined(chromChromS) then ("--chroms " +  '"' + chromChromS + '"') else ""}
  >>>
}