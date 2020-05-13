version 1.0

task Maf2maf.pl {
  input {
    Boolean inputInputMaf
    Boolean outputOutputMaf
    Boolean tmpTmpDir
    Boolean tumTumDepthCol
    Boolean tumTumRadCol
    Boolean tumTumVadCol
    Boolean nrmNrmDepthCol
    Boolean nrmNrmRadCol
    Boolean nrmNrmVadCol
    Boolean retainRetainCols
    Boolean customCustomEnst
    Boolean vepVepPath
    Boolean vepVepData
    Boolean vepVepForks
    Boolean bufferBufferSize
    Boolean anyAnyAllele
    Boolean filterFilterVcf
    Boolean maxMaxFilterAc
    Boolean speciesSpecies
    Boolean ncbiNcbiBuild
    Boolean cacheCacheVersion
    Boolean refRefFastA
    Boolean manMan
    String? perlPerl
    String? maf2mafplMaf2mafpl
  }
  command <<<
    maf2maf.pl \
      ~{perlPerl} \
      ~{true="--input-maf" false="" inputInputMaf} \
      ~{true="--output-maf" false="" outputOutputMaf} \
      ~{true="--tmp-dir" false="" tmpTmpDir} \
      ~{true="--tum-depth-col" false="" tumTumDepthCol} \
      ~{true="--tum-rad-col" false="" tumTumRadCol} \
      ~{true="--tum-vad-col" false="" tumTumVadCol} \
      ~{true="--nrm-depth-col" false="" nrmNrmDepthCol} \
      ~{true="--nrm-rad-col" false="" nrmNrmRadCol} \
      ~{true="--nrm-vad-col" false="" nrmNrmVadCol} \
      ~{true="--retain-cols" false="" retainRetainCols} \
      ~{true="--custom-enst" false="" customCustomEnst} \
      ~{true="--vep-path" false="" vepVepPath} \
      ~{true="--vep-data" false="" vepVepData} \
      ~{true="--vep-forks" false="" vepVepForks} \
      ~{true="--buffer-size" false="" bufferBufferSize} \
      ~{true="--any-allele" false="" anyAnyAllele} \
      ~{true="--filter-vcf" false="" filterFilterVcf} \
      ~{true="--max-filter-ac" false="" maxMaxFilterAc} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--ncbi-build" false="" ncbiNcbiBuild} \
      ~{true="--cache-version" false="" cacheCacheVersion} \
      ~{true="--ref-fasta" false="" refRefFastA} \
      ~{true="--man" false="" manMan} \
      ~{maf2mafplMaf2mafpl}
  >>>
}