version 1.0

task SketchyUtilsFxTime {
  input {
    File fastFastQ
    File indexIndex
    File evaluationEvaluation
    String prefixPrefix
    String deltaDelta
  }
  command <<<
    sketchy utils fx-time \
      ~{if defined(fastFastQ) then ("--fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(evaluationEvaluation) then ("--evaluation " +  '"' + evaluationEvaluation + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(deltaDelta) then ("--delta " +  '"' + deltaDelta + '"') else ""}
  >>>
}