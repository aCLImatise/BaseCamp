version 1.0

task Dkfzbiasfilter.py {
  input {
    String tempTempFolder
    String mapqMapq
    String baseBaseQ
    String qualityQualityScheme
    String pvalPvalThRes
    String biasBiasRatioMin
    String biasBiasRatioMax
    String nNReadsMin
    String nmNmUtmIn
    Int maxMaxOpReadsPcrWeak
    Int maxMaxOpReadsPcrStrong
    Int maxMaxOpReadsSeqWeak
    Int maxMaxOpReadsSeqStrong
    Int maxMaxOpRatioPcr
    Int maxMaxOpRatioSeq
    String filterFilterCycles
    Boolean writeWriteQc
    Boolean passPassOnly
    String? vcfVcfFile
    String? bamBamFile
    String? referenceReferenceSequenceFile
    String? filteredFilteredVcfFile
  }
  command <<<
    dkfzbiasfilter.py \
      ~{vcfVcfFile} \
      ~{if defined(tempTempFolder) then ("--tempFolder " +  '"' + tempTempFolder + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(baseBaseQ) then ("--baseq " +  '"' + baseBaseQ + '"') else ""} \
      ~{if defined(qualityQualityScheme) then ("--qualityScheme " +  '"' + qualityQualityScheme + '"') else ""} \
      ~{if defined(pvalPvalThRes) then ("--pValThres " +  '"' + pvalPvalThRes + '"') else ""} \
      ~{if defined(biasBiasRatioMin) then ("--biasRatioMin " +  '"' + biasBiasRatioMin + '"') else ""} \
      ~{if defined(biasBiasRatioMax) then ("--biasRatioMax " +  '"' + biasBiasRatioMax + '"') else ""} \
      ~{if defined(nNReadsMin) then ("--nReadsMin " +  '"' + nNReadsMin + '"') else ""} \
      ~{if defined(nmNmUtmIn) then ("--nMutMin " +  '"' + nmNmUtmIn + '"') else ""} \
      ~{if defined(maxMaxOpReadsPcrWeak) then ("--maxOpReadsPcrWeak " +  '"' + maxMaxOpReadsPcrWeak + '"') else ""} \
      ~{if defined(maxMaxOpReadsPcrStrong) then ("--maxOpReadsPcrStrong " +  '"' + maxMaxOpReadsPcrStrong + '"') else ""} \
      ~{if defined(maxMaxOpReadsSeqWeak) then ("--maxOpReadsSeqWeak " +  '"' + maxMaxOpReadsSeqWeak + '"') else ""} \
      ~{if defined(maxMaxOpReadsSeqStrong) then ("--maxOpReadsSeqStrong " +  '"' + maxMaxOpReadsSeqStrong + '"') else ""} \
      ~{if defined(maxMaxOpRatioPcr) then ("--maxOpRatioPcr " +  '"' + maxMaxOpRatioPcr + '"') else ""} \
      ~{if defined(maxMaxOpRatioSeq) then ("--maxOpRatioSeq " +  '"' + maxMaxOpRatioSeq + '"') else ""} \
      ~{if defined(filterFilterCycles) then ("--filterCycles " +  '"' + filterFilterCycles + '"') else ""} \
      ~{true="--writeQC" false="" writeWriteQc} \
      ~{true="--passOnly" false="" passPassOnly} \
      ~{bamBamFile} \
      ~{referenceReferenceSequenceFile} \
      ~{filteredFilteredVcfFile}
  >>>
}