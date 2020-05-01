version 1.0

task Pyseer {
  input {
    String phenotypesPhenotypes
    String phenotypePhenotypeColumn
    String kmKmErs
    String vcfVcf
    String presPres
    String burdenBurden
    String distancesDistances
    String loadLoadM
    String similaritySimilarity
    String loadLoadLmm
    String saveSaveM
    String saveSaveLmm
    String mdsMds
    Int maxMaxDimensions
    Boolean noNoDistances
    Boolean continuousContinuous
    Boolean lmmLmm
    String wgWg
    Boolean lineageLineage
    String lineageLineageClusters
    String lineageLineageFile
    Boolean sequenceSequenceReweighting
    String saveSaveVars
    String loadLoadVars
    String saveSaveModel
    String alphaAlpha
    String nNFolds
    Int minMinAf
    Int maxMaxAf
    Int maxMaxMissing
    String filterFilterPValue
    String lrtLrtPValue
    String corCorFilter
    String covariatesCovariates
    Boolean useUseCovariates
    Boolean printPrintSamples
    Boolean printPrintFiltered
    String outputOutputPatterns
    Boolean uncompressedUncompressed
    String cpuCpu
    String blockBlockSize
  }
  command <<<
    pyseer \
      ~{if defined(phenotypesPhenotypes) then ("--phenotypes " +  '"' + phenotypesPhenotypes + '"') else ""} \
      ~{if defined(phenotypePhenotypeColumn) then ("--phenotype-column " +  '"' + phenotypePhenotypeColumn + '"') else ""} \
      ~{if defined(kmKmErs) then ("--kmers " +  '"' + kmKmErs + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(presPres) then ("--pres " +  '"' + presPres + '"') else ""} \
      ~{if defined(burdenBurden) then ("--burden " +  '"' + burdenBurden + '"') else ""} \
      ~{if defined(distancesDistances) then ("--distances " +  '"' + distancesDistances + '"') else ""} \
      ~{if defined(loadLoadM) then ("--load-m " +  '"' + loadLoadM + '"') else ""} \
      ~{if defined(similaritySimilarity) then ("--similarity " +  '"' + similaritySimilarity + '"') else ""} \
      ~{if defined(loadLoadLmm) then ("--load-lmm " +  '"' + loadLoadLmm + '"') else ""} \
      ~{if defined(saveSaveM) then ("--save-m " +  '"' + saveSaveM + '"') else ""} \
      ~{if defined(saveSaveLmm) then ("--save-lmm " +  '"' + saveSaveLmm + '"') else ""} \
      ~{if defined(mdsMds) then ("--mds " +  '"' + mdsMds + '"') else ""} \
      ~{if defined(maxMaxDimensions) then ("--max-dimensions " +  '"' + maxMaxDimensions + '"') else ""} \
      ~{true="--no-distances" false="" noNoDistances} \
      ~{true="--continuous" false="" continuousContinuous} \
      ~{true="--lmm" false="" lmmLmm} \
      ~{if defined(wgWg) then ("--wg " +  '"' + wgWg + '"') else ""} \
      ~{true="--lineage" false="" lineageLineage} \
      ~{if defined(lineageLineageClusters) then ("--lineage-clusters " +  '"' + lineageLineageClusters + '"') else ""} \
      ~{if defined(lineageLineageFile) then ("--lineage-file " +  '"' + lineageLineageFile + '"') else ""} \
      ~{true="--sequence-reweighting" false="" sequenceSequenceReweighting} \
      ~{if defined(saveSaveVars) then ("--save-vars " +  '"' + saveSaveVars + '"') else ""} \
      ~{if defined(loadLoadVars) then ("--load-vars " +  '"' + loadLoadVars + '"') else ""} \
      ~{if defined(saveSaveModel) then ("--save-model " +  '"' + saveSaveModel + '"') else ""} \
      ~{if defined(alphaAlpha) then ("--alpha " +  '"' + alphaAlpha + '"') else ""} \
      ~{if defined(nNFolds) then ("--n-folds " +  '"' + nNFolds + '"') else ""} \
      ~{if defined(minMinAf) then ("--min-af " +  '"' + minMinAf + '"') else ""} \
      ~{if defined(maxMaxAf) then ("--max-af " +  '"' + maxMaxAf + '"') else ""} \
      ~{if defined(maxMaxMissing) then ("--max-missing " +  '"' + maxMaxMissing + '"') else ""} \
      ~{if defined(filterFilterPValue) then ("--filter-pvalue " +  '"' + filterFilterPValue + '"') else ""} \
      ~{if defined(lrtLrtPValue) then ("--lrt-pvalue " +  '"' + lrtLrtPValue + '"') else ""} \
      ~{if defined(corCorFilter) then ("--cor-filter " +  '"' + corCorFilter + '"') else ""} \
      ~{if defined(covariatesCovariates) then ("--covariates " +  '"' + covariatesCovariates + '"') else ""} \
      ~{true="--use-covariates" false="" useUseCovariates} \
      ~{true="--print-samples" false="" printPrintSamples} \
      ~{true="--print-filtered" false="" printPrintFiltered} \
      ~{if defined(outputOutputPatterns) then ("--output-patterns " +  '"' + outputOutputPatterns + '"') else ""} \
      ~{true="--uncompressed" false="" uncompressedUncompressed} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block_size " +  '"' + blockBlockSize + '"') else ""}
  >>>
}