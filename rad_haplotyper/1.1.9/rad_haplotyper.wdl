version 1.0

task RadHaplotyper.pl {
  input {
    String vV
    Boolean bB
    Boolean sS
    Boolean rR
    Boolean sS
    Boolean uU
    Boolean mM
    Boolean mpMp
    Boolean mlMl
    Boolean dD
    Boolean zZ
    Boolean cC
    Boolean gG
    Boolean oO
    Boolean pP
    Boolean tT
    Boolean aA
    Boolean p1P1
    Boolean p2P2
    Boolean xX
    Boolean nN
    Boolean eE
    Boolean vcfVcfFile
    Boolean referenceReference
    Boolean bedBedFile
    Boolean genomicGenomicRef
    Boolean samplesSamples
    Boolean cutCutOff
    Boolean threadsThreads
    Boolean keepKeepSingleIndels
    Boolean complexComplex
    Boolean depthDepth
    Boolean hapHapRescue
    Boolean missMissCutOff
    Boolean maxMaxParalogInds
    Boolean maxMaxLowCovInds
    Boolean geneGenePop
    Boolean vcfVcfOut
    Boolean imaIma
    Boolean popPopMap
    Boolean tsvTsvFile
    Boolean parentParent1
    Boolean parentParent2
    Boolean debugDebug
  }
  command <<<
    rad_haplotyper.pl \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-u" false="" uU} \
      ~{true="-m" false="" mM} \
      ~{true="-mp" false="" mpMp} \
      ~{true="-ml" false="" mlMl} \
      ~{true="-d" false="" dD} \
      ~{true="-z" false="" zZ} \
      ~{true="-c" false="" cC} \
      ~{true="-g" false="" gG} \
      ~{true="-o" false="" oO} \
      ~{true="-p" false="" pP} \
      ~{true="-t" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="-p1" false="" p1P1} \
      ~{true="-p2" false="" p2P2} \
      ~{true="-x" false="" xX} \
      ~{true="-n" false="" nN} \
      ~{true="-e" false="" eE} \
      ~{true="--vcffile" false="" vcfVcfFile} \
      ~{true="--reference" false="" referenceReference} \
      ~{true="--bedfile" false="" bedBedFile} \
      ~{true="--genomic_ref" false="" genomicGenomicRef} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--cutoff" false="" cutCutOff} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--keep_single_indels" false="" keepKeepSingleIndels} \
      ~{true="--complex" false="" complexComplex} \
      ~{true="--depth" false="" depthDepth} \
      ~{true="--hap_rescue" false="" hapHapRescue} \
      ~{true="--miss_cutoff" false="" missMissCutOff} \
      ~{true="--max_paralog_inds" false="" maxMaxParalogInds} \
      ~{true="--max_low_cov_inds" false="" maxMaxLowCovInds} \
      ~{true="--genepop" false="" geneGenePop} \
      ~{true="--vcfout" false="" vcfVcfOut} \
      ~{true="--ima" false="" imaIma} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="--tsvfile" false="" tsvTsvFile} \
      ~{true="--parent1" false="" parentParent1} \
      ~{true="--parent2" false="" parentParent2} \
      ~{true="--debug" false="" debugDebug}
  >>>
}