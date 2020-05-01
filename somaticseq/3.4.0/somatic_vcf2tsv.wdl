version 1.0

task SomaticVcf2tsv.py {
  input {
    String vcfVcfFormat
    String bedBedFormat
    String positionsPositionsList
    String normalNormalBamFile
    String tumorTumorBamFile
    String groundGroundTruthVcf
    String dbsnpDbsnpVcf
    String cosmicCosmicVcf
    String muteMuteCtVcf
    String strStrElkaVcf
    String somaticSomaticSniperVcf
    String varsVarsCanVcf
    String jsmJsmVcf
    String varVarDictVcf
    String museMuseVcf
    String loLoFreqVcf
    String scalpelScalpelVcf
    String tnTnScopeVcf
    String platypusPlatypusVcf
    String genomeGenomeReference
    Boolean deDeDuplicate
    Int minimumMinimumMappingQuality
    Int minimumMinimumBaseQuality
    Int minimumMinimumNumCallers
    String pPScale
    String outputOutputTsvFile
  }
  command <<<
    somatic_vcf2tsv.py \
      ~{if defined(vcfVcfFormat) then ("--vcf-format " +  '"' + vcfVcfFormat + '"') else ""} \
      ~{if defined(bedBedFormat) then ("--bed-format " +  '"' + bedBedFormat + '"') else ""} \
      ~{if defined(positionsPositionsList) then ("--positions-list " +  '"' + positionsPositionsList + '"') else ""} \
      ~{if defined(normalNormalBamFile) then ("--normal-bam-file " +  '"' + normalNormalBamFile + '"') else ""} \
      ~{if defined(tumorTumorBamFile) then ("--tumor-bam-file " +  '"' + tumorTumorBamFile + '"') else ""} \
      ~{if defined(groundGroundTruthVcf) then ("--ground-truth-vcf " +  '"' + groundGroundTruthVcf + '"') else ""} \
      ~{if defined(dbsnpDbsnpVcf) then ("--dbsnp-vcf " +  '"' + dbsnpDbsnpVcf + '"') else ""} \
      ~{if defined(cosmicCosmicVcf) then ("--cosmic-vcf " +  '"' + cosmicCosmicVcf + '"') else ""} \
      ~{if defined(muteMuteCtVcf) then ("--mutect-vcf " +  '"' + muteMuteCtVcf + '"') else ""} \
      ~{if defined(strStrElkaVcf) then ("--strelka-vcf " +  '"' + strStrElkaVcf + '"') else ""} \
      ~{if defined(somaticSomaticSniperVcf) then ("--somaticsniper-vcf " +  '"' + somaticSomaticSniperVcf + '"') else ""} \
      ~{if defined(varsVarsCanVcf) then ("--varscan-vcf " +  '"' + varsVarsCanVcf + '"') else ""} \
      ~{if defined(jsmJsmVcf) then ("--jsm-vcf " +  '"' + jsmJsmVcf + '"') else ""} \
      ~{if defined(varVarDictVcf) then ("--vardict-vcf " +  '"' + varVarDictVcf + '"') else ""} \
      ~{if defined(museMuseVcf) then ("--muse-vcf " +  '"' + museMuseVcf + '"') else ""} \
      ~{if defined(loLoFreqVcf) then ("--lofreq-vcf " +  '"' + loLoFreqVcf + '"') else ""} \
      ~{if defined(scalpelScalpelVcf) then ("--scalpel-vcf " +  '"' + scalpelScalpelVcf + '"') else ""} \
      ~{if defined(tnTnScopeVcf) then ("--tnscope-vcf " +  '"' + tnTnScopeVcf + '"') else ""} \
      ~{if defined(platypusPlatypusVcf) then ("--platypus-vcf " +  '"' + platypusPlatypusVcf + '"') else ""} \
      ~{if defined(genomeGenomeReference) then ("--genome-reference " +  '"' + genomeGenomeReference + '"') else ""} \
      ~{true="--deduplicate" false="" deDeDuplicate} \
      ~{if defined(minimumMinimumMappingQuality) then ("--minimum-mapping-quality " +  '"' + minimumMinimumMappingQuality + '"') else ""} \
      ~{if defined(minimumMinimumBaseQuality) then ("--minimum-base-quality " +  '"' + minimumMinimumBaseQuality + '"') else ""} \
      ~{if defined(minimumMinimumNumCallers) then ("--minimum-num-callers " +  '"' + minimumMinimumNumCallers + '"') else ""} \
      ~{if defined(pPScale) then ("--p-scale " +  '"' + pPScale + '"') else ""} \
      ~{if defined(outputOutputTsvFile) then ("--output-tsv-file " +  '"' + outputOutputTsvFile + '"') else ""}
  >>>
}