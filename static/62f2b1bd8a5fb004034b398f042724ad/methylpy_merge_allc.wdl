version 1.0

task MethylpyMergeAllc {
  input {
    Array[String]+ allAllCFiles
    String outputOutputFile
    String numNumProcs
    String compressCompressOutput
    String skipSkipSnpInfo
    Int miniMiniBatch
  }
  command <<<
    methylpy merge-allc \
      ~{if defined(allAllCFiles) then ("--allc-files " +  '"' + allAllCFiles + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(compressCompressOutput) then ("--compress-output " +  '"' + compressCompressOutput + '"') else ""} \
      ~{if defined(skipSkipSnpInfo) then ("--skip-snp-info " +  '"' + skipSkipSnpInfo + '"') else ""} \
      ~{if defined(miniMiniBatch) then ("--mini-batch " +  '"' + miniMiniBatch + '"') else ""}
  >>>
}