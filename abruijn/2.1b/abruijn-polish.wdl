version 1.0

task AbruijnPolish {
  input {
    String vV
    String tT
    String? bubblesBubblesFile
    String? subsSubsMatrix
    String? hopHopOMatrix
    String? outOutFile
  }
  command <<<
    abruijn-polish \
      ~{bubblesBubblesFile} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{subsSubsMatrix} \
      ~{hopHopOMatrix} \
      ~{outOutFile}
  >>>
}