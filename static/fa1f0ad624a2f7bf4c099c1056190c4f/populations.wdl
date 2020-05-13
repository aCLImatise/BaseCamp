version 1.0

task Populations {
  input {
    Boolean inInPath
    Boolean inInVcf
    Boolean outOutPath
    Boolean popPopMap
    Boolean threadsThreads
    Boolean batchBatchSize
    Boolean minMinPopulations
    Boolean minMinSamplesPerPop
    Boolean minMinSamplesOverall
    Boolean filterFilterHaplotypeWise
    Boolean minMinMaf
    Boolean minMinMac
    Boolean maxMaxObsHet
    Boolean writeWriteSingleSnp
    Boolean writeWriteRandomSnp
    Boolean blacklistBlacklist
    Boolean whitelistWhitelist
    Boolean renzRenz
    Boolean mergeMergeSites
    Boolean mergeMergePruneLim
    Boolean hHWe
    Boolean fFStats
    Boolean fstFstCorrection
    Boolean pPValueCutOff
    Boolean sigmaSigma
    Boolean bootstrapBootstrap
    Boolean bootstrapBootstrapReps
    Boolean bootstrapBootstrapPifIs
    Boolean bootstrapBootstrapFst
    Boolean bootstrapBootstrapDiv
    Boolean bootstrapBootstrapPHist
    Boolean bootstrapBootstrapWl
    Boolean orderedOrderedExport
    Boolean fastFastALoci
    Boolean fastFastASamples
    Boolean vcfVcf
    Boolean geneGenePop
    Boolean structureStructure
    Boolean radRadPainter
    Boolean plinkPlink
    Boolean hzHzAr
    Boolean phylipPhylip
    Boolean phylipPhylipVar
    Boolean phylipPhylipVarAll
    Boolean treeTreeMix
    Boolean noNoHapExports
    Boolean fastFastASamplesRaw
    Boolean mapMapType
    Boolean mapMapFormat
    Boolean verboseVerbose
    Boolean logLogFstComp
  }
  command <<<
    populations \
      ~{true="--in-path" false="" inInPath} \
      ~{true="--in-vcf" false="" inInVcf} \
      ~{true="--out-path" false="" outOutPath} \
      ~{true="--popmap" false="" popPopMap} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--batch-size" false="" batchBatchSize} \
      ~{true="--min-populations" false="" minMinPopulations} \
      ~{true="--min-samples-per-pop" false="" minMinSamplesPerPop} \
      ~{true="--min-samples-overall" false="" minMinSamplesOverall} \
      ~{true="--filter-haplotype-wise" false="" filterFilterHaplotypeWise} \
      ~{true="--min-maf" false="" minMinMaf} \
      ~{true="--min-mac" false="" minMinMac} \
      ~{true="--max-obs-het" false="" maxMaxObsHet} \
      ~{true="--write-single-snp" false="" writeWriteSingleSnp} \
      ~{true="--write-random-snp" false="" writeWriteRandomSnp} \
      ~{true="--blacklist" false="" blacklistBlacklist} \
      ~{true="--whitelist" false="" whitelistWhitelist} \
      ~{true="--renz" false="" renzRenz} \
      ~{true="--merge-sites" false="" mergeMergeSites} \
      ~{true="--merge-prune-lim" false="" mergeMergePruneLim} \
      ~{true="--hwe" false="" hHWe} \
      ~{true="--fstats" false="" fFStats} \
      ~{true="--fst-correction" false="" fstFstCorrection} \
      ~{true="--p-value-cutoff" false="" pPValueCutOff} \
      ~{true="--sigma" false="" sigmaSigma} \
      ~{true="--bootstrap" false="" bootstrapBootstrap} \
      ~{true="--bootstrap-reps" false="" bootstrapBootstrapReps} \
      ~{true="--bootstrap-pifis" false="" bootstrapBootstrapPifIs} \
      ~{true="--bootstrap-fst" false="" bootstrapBootstrapFst} \
      ~{true="--bootstrap-div" false="" bootstrapBootstrapDiv} \
      ~{true="--bootstrap-phist" false="" bootstrapBootstrapPHist} \
      ~{true="--bootstrap-wl" false="" bootstrapBootstrapWl} \
      ~{true="--ordered-export" false="" orderedOrderedExport} \
      ~{true="--fasta-loci" false="" fastFastALoci} \
      ~{true="--fasta-samples" false="" fastFastASamples} \
      ~{true="--vcf" false="" vcfVcf} \
      ~{true="--genepop" false="" geneGenePop} \
      ~{true="--structure" false="" structureStructure} \
      ~{true="--radpainter" false="" radRadPainter} \
      ~{true="--plink" false="" plinkPlink} \
      ~{true="--hzar" false="" hzHzAr} \
      ~{true="--phylip" false="" phylipPhylip} \
      ~{true="--phylip-var" false="" phylipPhylipVar} \
      ~{true="--phylip-var-all" false="" phylipPhylipVarAll} \
      ~{true="--treemix" false="" treeTreeMix} \
      ~{true="--no-hap-exports" false="" noNoHapExports} \
      ~{true="--fasta-samples-raw" false="" fastFastASamplesRaw} \
      ~{true="--map-type" false="" mapMapType} \
      ~{true="--map-format" false="" mapMapFormat} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--log-fst-comp" false="" logLogFstComp}
  >>>
}