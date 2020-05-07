version 1.0

task EstAbundance.py {
  input {
    String inputInput
    String kmKmErDistr
    String outputOutput
    String levelLevel
    String outOutReport
    String thresholdThreshold
  }
  command <<<
    est_abundance.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(kmKmErDistr) then ("--kmer_distr " +  '"' + kmKmErDistr + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(outOutReport) then ("--out-report " +  '"' + outOutReport + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""}
  >>>
}