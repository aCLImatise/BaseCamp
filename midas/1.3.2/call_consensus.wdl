version 1.0

task CallConsensus.py {
  input {
    File outOut
    Float sampleSampleDepth
    Float sampleSampleCov
    Int maxMaxSamples
    String keepKeepSamples
    String excludeExcludeSamples
    File siteSiteList
    Int siteSiteDepth
    Float siteSitePrev
    Float siteSiteMaf
    Float siteSiteRatio
    Float alleleAlleleSupport
    String locusLocusType
    Boolean siteSiteType
    Int maxMaxSites
    File? pathPath
  }
  command <<<
    call_consensus.py \
      ~{pathPath} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(sampleSampleDepth) then ("--sample_depth " +  '"' + sampleSampleDepth + '"') else ""} \
      ~{if defined(sampleSampleCov) then ("--sample_cov " +  '"' + sampleSampleCov + '"') else ""} \
      ~{if defined(maxMaxSamples) then ("--max_samples " +  '"' + maxMaxSamples + '"') else ""} \
      ~{if defined(keepKeepSamples) then ("--keep_samples " +  '"' + keepKeepSamples + '"') else ""} \
      ~{if defined(excludeExcludeSamples) then ("--exclude_samples " +  '"' + excludeExcludeSamples + '"') else ""} \
      ~{if defined(siteSiteList) then ("--site_list " +  '"' + siteSiteList + '"') else ""} \
      ~{if defined(siteSiteDepth) then ("--site_depth " +  '"' + siteSiteDepth + '"') else ""} \
      ~{if defined(siteSitePrev) then ("--site_prev " +  '"' + siteSitePrev + '"') else ""} \
      ~{if defined(siteSiteMaf) then ("--site_maf " +  '"' + siteSiteMaf + '"') else ""} \
      ~{if defined(siteSiteRatio) then ("--site_ratio " +  '"' + siteSiteRatio + '"') else ""} \
      ~{if defined(alleleAlleleSupport) then ("--allele_support " +  '"' + alleleAlleleSupport + '"') else ""} \
      ~{if defined(locusLocusType) then ("--locus_type " +  '"' + locusLocusType + '"') else ""} \
      ~{true="--site_type" false="" siteSiteType} \
      ~{if defined(maxMaxSites) then ("--max_sites " +  '"' + maxMaxSites + '"') else ""}
  >>>
}