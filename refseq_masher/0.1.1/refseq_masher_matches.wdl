version 1.0

task RefseqMasherMatches {
  input {
    String mashMashBin
    File outputOutput
    Boolean outputOutputType
    Int topTopNResults
    Int minMinKmErThreshold
    Directory tmpTmpDir
  }
  command <<<
    refseq_masher matches \
      ~{if defined(mashMashBin) then ("--mash-bin " +  '"' + mashMashBin + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(topTopNResults) then ("--top-n-results " +  '"' + topTopNResults + '"') else ""} \
      ~{if defined(minMinKmErThreshold) then ("--min-kmer-threshold " +  '"' + minMinKmErThreshold + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp-dir " +  '"' + tmpTmpDir + '"') else ""}
  >>>
}