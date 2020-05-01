version 1.0

task WellingtonFootprints.py {
  input {
    Boolean bonferroniBonferroni
    String shoulderShoulderSizes
    String footprintFootprintSizes
    Boolean oneOneDimension
    String fdrFdrCutOff
    String fdrFdrIterations
    String fdrFdrLimit
    Array[String]+ pvPvCutoffs
    Boolean dontDontMergeFootprints
    String outputOutputPrefix
    String pP
    Boolean aA
    String? regionsRegions
    String? readsReads
    String? outputOutputDir
  }
  command <<<
    wellington_footprints.py \
      ~{regionsRegions} \
      ~{true="--bonferroni" false="" bonferroniBonferroni} \
      ~{if defined(shoulderShoulderSizes) then ("--shoulder-sizes " +  '"' + shoulderShoulderSizes + '"') else ""} \
      ~{if defined(footprintFootprintSizes) then ("--footprint-sizes " +  '"' + footprintFootprintSizes + '"') else ""} \
      ~{true="--one_dimension" false="" oneOneDimension} \
      ~{if defined(fdrFdrCutOff) then ("--FDR_cutoff " +  '"' + fdrFdrCutOff + '"') else ""} \
      ~{if defined(fdrFdrIterations) then ("--FDR_iterations " +  '"' + fdrFdrIterations + '"') else ""} \
      ~{if defined(fdrFdrLimit) then ("--FDR_limit " +  '"' + fdrFdrLimit + '"') else ""} \
      ~{if defined(pvPvCutoffs) then ("--pv_cutoffs " +  '"' + pvPvCutoffs + '"') else ""} \
      ~{true="--dont-merge-footprints" false="" dontDontMergeFootprints} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-A" false="" aA} \
      ~{readsReads} \
      ~{outputOutputDir}
  >>>
}