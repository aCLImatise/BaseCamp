version 1.0

task BcftoolsConsensus {
  input {
    File chainChain
    String excludeExclude
    File fastFastARef
    String haplotypeHaplotype
    String includeInclude
    Boolean iupacIupacCodes
    File maskMask
    String missingMissing
    File outputOutput
    String prefixPrefix
    String sampleSample
    String? optionsOptions
    File? fileFileVcfGz
  }
  command <<<
    bcftools consensus \
      ~{optionsOptions} \
      ~{if defined(chainChain) then ("--chain " +  '"' + chainChain + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{if defined(haplotypeHaplotype) then ("--haplotype " +  '"' + haplotypeHaplotype + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--iupac-codes" false="" iupacIupacCodes} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{if defined(missingMissing) then ("--missing " +  '"' + missingMissing + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{fileFileVcfGz}
  >>>
}