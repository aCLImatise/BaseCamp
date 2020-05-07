version 1.0

task RMETLCalling {
  input {
    String homozygousHomozygous
    String heterozygousHeterozygous
    Int minMinMapq
    String clippingClippingThreshold
    String sampleSample
    String meiMei
    String? outputOutput
  }
  command <<<
    rMETL calling \
      ~{outputOutput} \
      ~{if defined(homozygousHomozygous) then ("--homozygous " +  '"' + homozygousHomozygous + '"') else ""} \
      ~{if defined(heterozygousHeterozygous) then ("--heterozygous " +  '"' + heterozygousHeterozygous + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(clippingClippingThreshold) then ("--clipping_threshold " +  '"' + clippingClippingThreshold + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(meiMei) then ("--MEI " +  '"' + meiMei + '"') else ""}
  >>>
}