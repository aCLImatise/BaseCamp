version 1.0

task PhastOdds {
  input {
    String featuresFeatures
    Boolean windowWindow
    String outputOutputBed
    String backgroundBackgroundMods
    String backgroundBackgroundHmm
    String featureFeatureMods
    String featureFeatureHmm
    String featuresFeatures
    Int windowWindow
    Boolean baseBaseByBase
    Int windowWindowWig
    String msaMsaFormat
    String refRefIdx
    Boolean outputOutputBed
    Boolean verboseVerbose
  }
  command <<<
    phastOdds \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{true="--window" false="" windowWindow} \
      ~{if defined(outputOutputBed) then ("--output-bed " +  '"' + outputOutputBed + '"') else ""} \
      ~{if defined(backgroundBackgroundMods) then ("--background-mods " +  '"' + backgroundBackgroundMods + '"') else ""} \
      ~{if defined(backgroundBackgroundHmm) then ("--background-hmm " +  '"' + backgroundBackgroundHmm + '"') else ""} \
      ~{if defined(featureFeatureMods) then ("--feature-mods " +  '"' + featureFeatureMods + '"') else ""} \
      ~{if defined(featureFeatureHmm) then ("--feature-hmm " +  '"' + featureFeatureHmm + '"') else ""} \
      ~{if defined(featuresFeatures) then ("--features " +  '"' + featuresFeatures + '"') else ""} \
      ~{if defined(windowWindow) then ("--window " +  '"' + windowWindow + '"') else ""} \
      ~{true="--base-by-base" false="" baseBaseByBase} \
      ~{if defined(windowWindowWig) then ("--window-wig " +  '"' + windowWindowWig + '"') else ""} \
      ~{if defined(msaMsaFormat) then ("--msa-format " +  '"' + msaMsaFormat + '"') else ""} \
      ~{if defined(refRefIdx) then ("--refidx " +  '"' + refRefIdx + '"') else ""} \
      ~{true="--output-bed" false="" outputOutputBed} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}