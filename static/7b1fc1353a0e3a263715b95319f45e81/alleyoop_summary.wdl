version 1.0

task AlleyoopSummary {
  input {
    String outputOutput
    String tTCountDir
    String? bamBam
  }
  command <<<
    alleyoop summary \
      ~{bamBam} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(tTCountDir) then ("--tcountDir " +  '"' + tTCountDir + '"') else ""}
  >>>
}