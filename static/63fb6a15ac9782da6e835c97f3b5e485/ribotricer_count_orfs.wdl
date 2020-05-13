version 1.0

task RibotricerCountOrfs {
  input {
    String ribotRibotRicerIndex
    String detectedDetectedOrfs
    String featuresFeatures
    String outOut
    Boolean reportReportAll
  }
  command <<<
    ribotricer count-orfs \
      ~{if defined(ribotRibotRicerIndex) then ("--ribotricer_index " +  '"' + ribotRibotRicerIndex + '"') else ""} \
      ~{if defined(detectedDetectedOrfs) then ("--detected_orfs " +  '"' + detectedDetectedOrfs + '"') else ""} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--report_all" false="" reportReportAll}
  >>>
}