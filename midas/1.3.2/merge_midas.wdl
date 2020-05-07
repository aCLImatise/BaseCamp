version 1.0

task MergeMidas.pySnps {
  input {
    Int threadsThreads
    String iI
    String tT
    String dD
    Boolean coreCoreSnps
    Boolean coreCoreSites
    Boolean allAllSnps
    Boolean allAllSites
    Int minMinSamples
    String speciesSpeciesId
    Int maxMaxSpecies
    Float sampleSampleDepth
    Float fractFractCov
    Int maxMaxSamples
    Boolean allAllSamples
    Boolean snpSnpType
    Float alleleAlleleFreq
    Int siteSiteDepth
    Float siteSiteRatio
    Float siteSitePrev
    Int maxMaxSites
    String? outdirOutdir
  }
  command <<<
    merge_midas.py snps \
      ~{outdirOutdir} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="--core_snps" false="" coreCoreSnps} \
      ~{true="--core_sites" false="" coreCoreSites} \
      ~{true="--all_snps" false="" allAllSnps} \
      ~{true="--all_sites" false="" allAllSites} \
      ~{if defined(minMinSamples) then ("--min_samples " +  '"' + minMinSamples + '"') else ""} \
      ~{if defined(speciesSpeciesId) then ("--species_id " +  '"' + speciesSpeciesId + '"') else ""} \
      ~{if defined(maxMaxSpecies) then ("--max_species " +  '"' + maxMaxSpecies + '"') else ""} \
      ~{if defined(sampleSampleDepth) then ("--sample_depth " +  '"' + sampleSampleDepth + '"') else ""} \
      ~{if defined(fractFractCov) then ("--fract_cov " +  '"' + fractFractCov + '"') else ""} \
      ~{if defined(maxMaxSamples) then ("--max_samples " +  '"' + maxMaxSamples + '"') else ""} \
      ~{true="--all_samples" false="" allAllSamples} \
      ~{true="--snp_type" false="" snpSnpType} \
      ~{if defined(alleleAlleleFreq) then ("--allele_freq " +  '"' + alleleAlleleFreq + '"') else ""} \
      ~{if defined(siteSiteDepth) then ("--site_depth " +  '"' + siteSiteDepth + '"') else ""} \
      ~{if defined(siteSiteRatio) then ("--site_ratio " +  '"' + siteSiteRatio + '"') else ""} \
      ~{if defined(siteSitePrev) then ("--site_prev " +  '"' + siteSitePrev + '"') else ""} \
      ~{if defined(maxMaxSites) then ("--max_sites " +  '"' + maxMaxSites + '"') else ""}
  >>>
}