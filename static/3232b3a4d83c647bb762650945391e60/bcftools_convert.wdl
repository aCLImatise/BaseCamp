version 1.0

task BcftoolsConvert {
  input {
    String excludeExclude
    String includeInclude
    String regionsRegions
    File regionsRegionsFile
    String samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Boolean noNoVersion
    File outputOutput
    Boolean outputOutputType
    Int threadsThreads
    Boolean gensample2vcfGensample2vcf
    Boolean genGenSample
    String tagTag
    Boolean chromChrom
    File sexSex
    Boolean vcfVcfIds
    Boolean gvcf2vcfGvcf2vcf
    File fastFastARef
    Boolean hapsample2vcfHapsample2vcf
    Boolean hapHapSample
    Boolean haploidHaploid2Diploid
    File sexSex
    Boolean vcfVcfIds
    Boolean hapHapLegendSample2vcf
    Boolean haploidHaploid2Diploid
    File sexSex
    Boolean vcfVcfIds
    String columnsColumns
    File fastFastARef
    String samplesSamples
    File samplesSamplesFile
    String? optionsOptions
    String? inputInputFile
  }
  command <<<
    bcftools convert \
      ~{optionsOptions} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--gensample2vcf" false="" gensample2vcfGensample2vcf} \
      ~{true="--gensample" false="" genGenSample} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{true="--chrom" false="" chromChrom} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{true="--vcf-ids" false="" vcfVcfIds} \
      ~{true="--gvcf2vcf" false="" gvcf2vcfGvcf2vcf} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{true="--hapsample2vcf" false="" hapsample2vcfHapsample2vcf} \
      ~{true="--hapsample" false="" hapHapSample} \
      ~{true="--haploid2diploid" false="" haploidHaploid2Diploid} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{true="--vcf-ids" false="" vcfVcfIds} \
      ~{true="--haplegendsample2vcf" false="" hapHapLegendSample2vcf} \
      ~{true="--haploid2diploid" false="" haploidHaploid2Diploid} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{true="--vcf-ids" false="" vcfVcfIds} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{inputInputFile}
  >>>
}