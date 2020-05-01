version 1.0

task VcfCompare {
  input {
    Boolean applyApplyFilters
    Boolean chromosomesChromosomes
    Boolean debugDebug
    Boolean cmpCmpGenotypes
    Boolean ignoreIgnoreIndels
    Boolean nameNameMapping
    String infoInfo
    String plotPlot
    File refseqRefseq
    Boolean regionsRegions
    Boolean samplesSamples
    String titleTitle
    Int winWin
    String? optionsOptions
    File? fileFile1vcf
    String? vcfVcfCompare
    String? chr1cmpChr1cmp
    String? optionsOptions
  }
  command <<<
    vcf-compare \
      ~{optionsOptions} \
      ~{true="--apply-filters" false="" applyApplyFilters} \
      ~{true="--chromosomes" false="" chromosomesChromosomes} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--cmp-genotypes" false="" cmpCmpGenotypes} \
      ~{true="--ignore-indels" false="" ignoreIgnoreIndels} \
      ~{true="--name-mapping" false="" nameNameMapping} \
      ~{if defined(infoInfo) then ("--INFO " +  '"' + infoInfo + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(refseqRefseq) then ("--refseq " +  '"' + refseqRefseq + '"') else ""} \
      ~{true="--regions" false="" regionsRegions} \
      ~{true="--samples" false="" samplesSamples} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{if defined(winWin) then ("--win " +  '"' + winWin + '"') else ""} \
      ~{fileFile1vcf} \
      ~{vcfVcfCompare} \
      ~{chr1cmpChr1cmp} \
      ~{optionsOptions}
  >>>
}