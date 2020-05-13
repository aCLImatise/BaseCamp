version 1.0

task SingleSampleVcf2tsv.py {
  input {
    String vcfVcfFormat
    String bedBedFormat
    String positionsPositionsList
    String inInBam
    String groundGroundTruthVcf
    String dbsnpDbsnpVcf
    String cosmicCosmicVcf
    String muteMuteCtVcf
    String varsVarsCanVcf
    String varVarDictVcf
    String loLoFreqVcf
    String scalpelScalpelVcf
    String strStrElkaVcf
    String genomeGenomeReference
    Boolean deDeDuplicate
    Int minimumMinimumMappingQuality
    Int minimumMinimumBaseQuality
    Int minimumMinimumNumCallers
    String pPScale
    String outputOutputTsvFile
  }
  command <<<
    single_sample_vcf2tsv.py \
      ~{if defined(vcfVcfFormat) then ("--vcf-format " +  '"' + vcfVcfFormat + '"') else ""} \
      ~{if defined(bedBedFormat) then ("--bed-format " +  '"' + bedBedFormat + '"') else ""} \
      ~{if defined(positionsPositionsList) then ("--positions-list " +  '"' + positionsPositionsList + '"') else ""} \
      ~{if defined(inInBam) then ("--in-bam " +  '"' + inInBam + '"') else ""} \
      ~{if defined(groundGroundTruthVcf) then ("--ground-truth-vcf " +  '"' + groundGroundTruthVcf + '"') else ""} \
      ~{if defined(dbsnpDbsnpVcf) then ("--dbsnp-vcf " +  '"' + dbsnpDbsnpVcf + '"') else ""} \
      ~{if defined(cosmicCosmicVcf) then ("--cosmic-vcf " +  '"' + cosmicCosmicVcf + '"') else ""} \
      ~{if defined(muteMuteCtVcf) then ("--mutect-vcf " +  '"' + muteMuteCtVcf + '"') else ""} \
      ~{if defined(varsVarsCanVcf) then ("--varscan-vcf " +  '"' + varsVarsCanVcf + '"') else ""} \
      ~{if defined(varVarDictVcf) then ("--vardict-vcf " +  '"' + varVarDictVcf + '"') else ""} \
      ~{if defined(loLoFreqVcf) then ("--lofreq-vcf " +  '"' + loLoFreqVcf + '"') else ""} \
      ~{if defined(scalpelScalpelVcf) then ("--scalpel-vcf " +  '"' + scalpelScalpelVcf + '"') else ""} \
      ~{if defined(strStrElkaVcf) then ("--strelka-vcf " +  '"' + strStrElkaVcf + '"') else ""} \
      ~{if defined(genomeGenomeReference) then ("--genome-reference " +  '"' + genomeGenomeReference + '"') else ""} \
      ~{true="--deduplicate" false="" deDeDuplicate} \
      ~{if defined(minimumMinimumMappingQuality) then ("--minimum-mapping-quality " +  '"' + minimumMinimumMappingQuality + '"') else ""} \
      ~{if defined(minimumMinimumBaseQuality) then ("--minimum-base-quality " +  '"' + minimumMinimumBaseQuality + '"') else ""} \
      ~{if defined(minimumMinimumNumCallers) then ("--minimum-num-callers " +  '"' + minimumMinimumNumCallers + '"') else ""} \
      ~{if defined(pPScale) then ("--p-scale " +  '"' + pPScale + '"') else ""} \
      ~{if defined(outputOutputTsvFile) then ("--output-tsv-file " +  '"' + outputOutputTsvFile + '"') else ""}
  >>>
}