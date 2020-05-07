version 1.0

task ReadAnalysis.pyDetectIr {
  input {
    String annotationAnnotation
    String readRead
    String refRefG
    String refRefT
    String alignerAligner
    String outputOutput
    String gGAlNm
    String tTAlNm
    String numNumThreads
  }
  command <<<
    read_analysis.py detect_ir \
      ~{if defined(annotationAnnotation) then ("--annotation " +  '"' + annotationAnnotation + '"') else ""} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""} \
      ~{if defined(refRefG) then ("--ref_g " +  '"' + refRefG + '"') else ""} \
      ~{if defined(refRefT) then ("--ref_t " +  '"' + refRefT + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(gGAlNm) then ("--g_alnm " +  '"' + gGAlNm + '"') else ""} \
      ~{if defined(tTAlNm) then ("--t_alnm " +  '"' + tTAlNm + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""}
  >>>
}