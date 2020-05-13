version 1.0

task RibotricerCountOrfsCodon {
  input {
    String ribotRibotRicerIndex
    String detectedDetectedOrfs
    String featuresFeatures
    String ribotRibotRicerIndexFastA
    String prefixPrefix
    Boolean reportReportAll
  }
  command <<<
    ribotricer count-orfs-codon \
      ~{if defined(ribotRibotRicerIndex) then ("--ribotricer_index " +  '"' + ribotRibotRicerIndex + '"') else ""} \
      ~{if defined(detectedDetectedOrfs) then ("--detected_orfs " +  '"' + detectedDetectedOrfs + '"') else ""} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(ribotRibotRicerIndexFastA) then ("--ribotricer_index_fasta " +  '"' + ribotRibotRicerIndexFastA + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--report_all" false="" reportReportAll}
  >>>
}