version 1.0

task DitasicMatrix.py {
  input {
    String startStartProb
    String avgAvgProb
    String endEndProb
    String probProbFile
    Int lengthLength
    String nN
    String indexIndex
    String tempTemp
    Boolean skipSkip
    String outputOutput
  }
  command <<<
    ditasic_matrix.py \
      ~{if defined(startStartProb) then ("--startprob " +  '"' + startStartProb + '"') else ""} \
      ~{if defined(avgAvgProb) then ("--avgprob " +  '"' + avgAvgProb + '"') else ""} \
      ~{if defined(endEndProb) then ("--endprob " +  '"' + endEndProb + '"') else ""} \
      ~{if defined(probProbFile) then ("--prob-file " +  '"' + probProbFile + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(tempTemp) then ("--temp " +  '"' + tempTemp + '"') else ""} \
      ~{true="--skip" false="" skipSkip} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}