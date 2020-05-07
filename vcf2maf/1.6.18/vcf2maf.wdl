version 1.0

task Vcf2maf.pl {
  input {
    Boolean inputInputVcf
    Boolean outputOutputMaf
    Boolean tmpTmpDir
    Boolean tumorTumorId
    Boolean normalNormalId
    Boolean vcfVcfTumorId
    Boolean vcfVcfNormalId
    Boolean customCustomEnst
    Boolean vepVepPath
    Boolean vepVepData
    Boolean vepVepForks
    Boolean bufferBufferSize
    Boolean anyAnyAllele
    Boolean inhibitInhibitVep
    Boolean onlineOnline
    Boolean refRefFastA
    Boolean filterFilterVcf
    Boolean maxMaxFilterAc
    Boolean speciesSpecies
    Boolean ncbiNcbiBuild
    Boolean cacheCacheVersion
    Boolean mafMafCenter
    Boolean retainRetainInfo
    Boolean retainRetainFmt
    Boolean minMinHomVaf
    Boolean remapRemapChain
    Boolean manMan
    String? perlPerl
    String? vcf2mafplVcf2mafpl
  }
  command <<<
    vcf2maf.pl \
      ~{perlPerl} \
      ~{true="--input-vcf" false="" inputInputVcf} \
      ~{true="--output-maf" false="" outputOutputMaf} \
      ~{true="--tmp-dir" false="" tmpTmpDir} \
      ~{true="--tumor-id" false="" tumorTumorId} \
      ~{true="--normal-id" false="" normalNormalId} \
      ~{true="--vcf-tumor-id" false="" vcfVcfTumorId} \
      ~{true="--vcf-normal-id" false="" vcfVcfNormalId} \
      ~{true="--custom-enst" false="" customCustomEnst} \
      ~{true="--vep-path" false="" vepVepPath} \
      ~{true="--vep-data" false="" vepVepData} \
      ~{true="--vep-forks" false="" vepVepForks} \
      ~{true="--buffer-size" false="" bufferBufferSize} \
      ~{true="--any-allele" false="" anyAnyAllele} \
      ~{true="--inhibit-vep" false="" inhibitInhibitVep} \
      ~{true="--online" false="" onlineOnline} \
      ~{true="--ref-fasta" false="" refRefFastA} \
      ~{true="--filter-vcf" false="" filterFilterVcf} \
      ~{true="--max-filter-ac" false="" maxMaxFilterAc} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--ncbi-build" false="" ncbiNcbiBuild} \
      ~{true="--cache-version" false="" cacheCacheVersion} \
      ~{true="--maf-center" false="" mafMafCenter} \
      ~{true="--retain-info" false="" retainRetainInfo} \
      ~{true="--retain-fmt" false="" retainRetainFmt} \
      ~{true="--min-hom-vaf" false="" minMinHomVaf} \
      ~{true="--remap-chain" false="" remapRemapChain} \
      ~{true="--man" false="" manMan} \
      ~{vcf2mafplVcf2mafpl}
  >>>
}