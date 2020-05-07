version 1.0

task JannovarAnnotateVcf {
  input {
    String inputInputVcf
    String outputOutputVcf
    String databaseDatabase
    Int intervalInterval
    String pedigreePedigreeFile
    Boolean annotateAnnotateAsSingletonPedigree
    String refRefFastA
    String dbsnpDbsnpVcf
    String dbsnpDbsnpPrefix
    String exExAcVcf
    String exExAcPrefix
    String gGNomadExoMesVcf
    String gGNomadExoMesPrefix
    String gGNomadGenomesVcf
    String gGNomadGenomesPrefix
    String uk10kUk10kVcf
    String uk10kUk10kPrefix
    String g1kG1kVcf
    String g1kG1kPrefix
    String clinClinVarVcf
    String clinClinVarPrefix
    String cosmicCosmicVcf
    String cosmicCosmicPrefix
    Boolean oneOneParentGtFilteredFiltersAffected
    Boolean inheritanceInheritanceAnNoUseFilters
    String dDBnsfPTsv
    String dDBnsfPColContig
    String dDBnsfPColPosition
    String dDBnsfPPrefix
    String dDBnsfPColumns
    String bedBedAnnotation
    String vcfVcfAnnotation
    String tsvTsvAnnotation
    Boolean useUseThresholdFilters
    String gtGtThreshFiltMinCovHet
    String gtGtThreshFiltMinCovHomAlt
    String gtGtThreshFiltMaxCov
    String gtGtThreshFiltMinGq
    String gtGtThreshFiltMinAafHet
    String gtGtThreshFiltMaxAafHet
    String gtGtThreshFiltMinAafHomAlt
    String gtGtThreshFiltMaxAafHomRef
    String varVarThreshMaxAlleleFreqAd
    String varVarThreshMaxAlleleFreqAr
    String varVarThreshMaxHomAltExAc
    String varVarThreshMaxHomAltG1k
    Boolean useUseAdvancedPedigreeFilters
    String deDeNovoMaxParentAd2
    Boolean enableEnableOffTargetFilter
    Boolean utrUtrIsOffTarget
    Boolean intronicIntronicSpliceIsOffTarget
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
  }
  command <<<
    jannovar annotate-vcf \
      ~{if defined(inputInputVcf) then ("--input-vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("--output-vcf " +  '"' + outputOutputVcf + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(pedigreePedigreeFile) then ("--pedigree-file " +  '"' + pedigreePedigreeFile + '"') else ""} \
      ~{true="--annotate-as-singleton-pedigree" false="" annotateAnnotateAsSingletonPedigree} \
      ~{if defined(refRefFastA) then ("--ref-fasta " +  '"' + refRefFastA + '"') else ""} \
      ~{if defined(dbsnpDbsnpVcf) then ("--dbsnp-vcf " +  '"' + dbsnpDbsnpVcf + '"') else ""} \
      ~{if defined(dbsnpDbsnpPrefix) then ("--dbsnp-prefix " +  '"' + dbsnpDbsnpPrefix + '"') else ""} \
      ~{if defined(exExAcVcf) then ("--exac-vcf " +  '"' + exExAcVcf + '"') else ""} \
      ~{if defined(exExAcPrefix) then ("--exac-prefix " +  '"' + exExAcPrefix + '"') else ""} \
      ~{if defined(gGNomadExoMesVcf) then ("--gnomad-exomes-vcf " +  '"' + gGNomadExoMesVcf + '"') else ""} \
      ~{if defined(gGNomadExoMesPrefix) then ("--gnomad-exomes-prefix " +  '"' + gGNomadExoMesPrefix + '"') else ""} \
      ~{if defined(gGNomadGenomesVcf) then ("--gnomad-genomes-vcf " +  '"' + gGNomadGenomesVcf + '"') else ""} \
      ~{if defined(gGNomadGenomesPrefix) then ("--gnomad-genomes-prefix " +  '"' + gGNomadGenomesPrefix + '"') else ""} \
      ~{if defined(uk10kUk10kVcf) then ("--uk10k-vcf " +  '"' + uk10kUk10kVcf + '"') else ""} \
      ~{if defined(uk10kUk10kPrefix) then ("--uk10k-prefix " +  '"' + uk10kUk10kPrefix + '"') else ""} \
      ~{if defined(g1kG1kVcf) then ("--g1k-vcf " +  '"' + g1kG1kVcf + '"') else ""} \
      ~{if defined(g1kG1kPrefix) then ("--g1k-prefix " +  '"' + g1kG1kPrefix + '"') else ""} \
      ~{if defined(clinClinVarVcf) then ("--clinvar-vcf " +  '"' + clinClinVarVcf + '"') else ""} \
      ~{if defined(clinClinVarPrefix) then ("--clinvar-prefix " +  '"' + clinClinVarPrefix + '"') else ""} \
      ~{if defined(cosmicCosmicVcf) then ("--cosmic-vcf " +  '"' + cosmicCosmicVcf + '"') else ""} \
      ~{if defined(cosmicCosmicPrefix) then ("--cosmic-prefix " +  '"' + cosmicCosmicPrefix + '"') else ""} \
      ~{true="--one-parent-gt-filtered-filters-affected" false="" oneOneParentGtFilteredFiltersAffected} \
      ~{true="--inheritance-anno-use-filters" false="" inheritanceInheritanceAnNoUseFilters} \
      ~{if defined(dDBnsfPTsv) then ("--dbnsfp-tsv " +  '"' + dDBnsfPTsv + '"') else ""} \
      ~{if defined(dDBnsfPColContig) then ("--dbnsfp-col-contig " +  '"' + dDBnsfPColContig + '"') else ""} \
      ~{if defined(dDBnsfPColPosition) then ("--dbnsfp-col-position " +  '"' + dDBnsfPColPosition + '"') else ""} \
      ~{if defined(dDBnsfPPrefix) then ("--dbnsfp-prefix " +  '"' + dDBnsfPPrefix + '"') else ""} \
      ~{if defined(dDBnsfPColumns) then ("--dbnsfp-columns " +  '"' + dDBnsfPColumns + '"') else ""} \
      ~{if defined(bedBedAnnotation) then ("--bed-annotation " +  '"' + bedBedAnnotation + '"') else ""} \
      ~{if defined(vcfVcfAnnotation) then ("--vcf-annotation " +  '"' + vcfVcfAnnotation + '"') else ""} \
      ~{if defined(tsvTsvAnnotation) then ("--tsv-annotation " +  '"' + tsvTsvAnnotation + '"') else ""} \
      ~{true="--use-threshold-filters" false="" useUseThresholdFilters} \
      ~{if defined(gtGtThreshFiltMinCovHet) then ("--gt-thresh-filt-min-cov-het " +  '"' + gtGtThreshFiltMinCovHet + '"') else ""} \
      ~{if defined(gtGtThreshFiltMinCovHomAlt) then ("--gt-thresh-filt-min-cov-hom-alt " +  '"' + gtGtThreshFiltMinCovHomAlt + '"') else ""} \
      ~{if defined(gtGtThreshFiltMaxCov) then ("--gt-thresh-filt-max-cov " +  '"' + gtGtThreshFiltMaxCov + '"') else ""} \
      ~{if defined(gtGtThreshFiltMinGq) then ("--gt-thresh-filt-min-gq " +  '"' + gtGtThreshFiltMinGq + '"') else ""} \
      ~{if defined(gtGtThreshFiltMinAafHet) then ("--gt-thresh-filt-min-aaf-het " +  '"' + gtGtThreshFiltMinAafHet + '"') else ""} \
      ~{if defined(gtGtThreshFiltMaxAafHet) then ("--gt-thresh-filt-max-aaf-het " +  '"' + gtGtThreshFiltMaxAafHet + '"') else ""} \
      ~{if defined(gtGtThreshFiltMinAafHomAlt) then ("--gt-thresh-filt-min-aaf-hom-alt " +  '"' + gtGtThreshFiltMinAafHomAlt + '"') else ""} \
      ~{if defined(gtGtThreshFiltMaxAafHomRef) then ("--gt-thresh-filt-max-aaf-hom-ref " +  '"' + gtGtThreshFiltMaxAafHomRef + '"') else ""} \
      ~{if defined(varVarThreshMaxAlleleFreqAd) then ("--var-thresh-max-allele-freq-ad " +  '"' + varVarThreshMaxAlleleFreqAd + '"') else ""} \
      ~{if defined(varVarThreshMaxAlleleFreqAr) then ("--var-thresh-max-allele-freq-ar " +  '"' + varVarThreshMaxAlleleFreqAr + '"') else ""} \
      ~{if defined(varVarThreshMaxHomAltExAc) then ("--var-thresh-max-hom-alt-exac " +  '"' + varVarThreshMaxHomAltExAc + '"') else ""} \
      ~{if defined(varVarThreshMaxHomAltG1k) then ("--var-thresh-max-hom-alt-g1k " +  '"' + varVarThreshMaxHomAltG1k + '"') else ""} \
      ~{true="--use-advanced-pedigree-filters" false="" useUseAdvancedPedigreeFilters} \
      ~{if defined(deDeNovoMaxParentAd2) then ("--de-novo-max-parent-ad2 " +  '"' + deDeNovoMaxParentAd2 + '"') else ""} \
      ~{true="--enable-off-target-filter" false="" enableEnableOffTargetFilter} \
      ~{true="--utr-is-off-target" false="" utrUtrIsOffTarget} \
      ~{true="--intronic-splice-is-off-target" false="" intronicIntronicSpliceIsOffTarget} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""}
  >>>
}