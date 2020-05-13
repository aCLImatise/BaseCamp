version 1.0

task ToAmosNew {
  input {
    String tT
    String minMin
    String maxMax
    String fastFastQ
    String tT
    String minMin
    String maxMax
    String fastFastQ
  }
  command <<<
    toAmos_new \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(minMin) then ("- min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("- max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(fastFastQ) then ("- fastq " +  '"' + fastFastQ + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(minMin) then ("- min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("- max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(fastFastQ) then ("- fastq " +  '"' + fastFastQ + '"') else ""}
  >>>
}