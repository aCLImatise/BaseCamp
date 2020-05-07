version 1.0

task MethylpyBamQualityFilter {
  input {
    String inputInputFile
    String outputOutputFile
    String refRefFastA
    Int minMinMapq
    Int minMinNumCh
    Int maxMaxMchLevel
    String bufferBufferLineNumber
  }
  command <<<
    methylpy bam-quality-filter \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(refRefFastA) then ("--ref-fasta " +  '"' + refRefFastA + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinNumCh) then ("--min-num-ch " +  '"' + minMinNumCh + '"') else ""} \
      ~{if defined(maxMaxMchLevel) then ("--max-mch-level " +  '"' + maxMaxMchLevel + '"') else ""} \
      ~{if defined(bufferBufferLineNumber) then ("--buffer-line-number " +  '"' + bufferBufferLineNumber + '"') else ""}
  >>>
}