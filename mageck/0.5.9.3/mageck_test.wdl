version 1.0

task MageckTest {
  input {
    String countCountTable
    String treatmentTreatmentId
    String day0Day0Label
    String controlControlId
    Boolean pairedPaired
    String normNormMethod
    String geneGeneTestFdrThreshold
    String adjustAdjustMethod
    String varianceVarianceEstimationSamples
    String sortSortCriteria
    String removeRemoveZero
    String removeRemoveZeroThreshold
    Boolean pdfPdfReport
    String geneGeneLfcMethod
    String outputOutputPrefix
    String controlControlSgRna
    String controlControlGene
    Boolean normNormCountsToFile
    String skipSkipGene
    Boolean keepKeepTmp
    String additionalAdditionalRraParameters
    String cnvCnvNorm
    String cellCellLine
    String cnvCnvEst
  }
  command <<<
    mageck test \
      ~{if defined(countCountTable) then ("--count-table " +  '"' + countCountTable + '"') else ""} \
      ~{if defined(treatmentTreatmentId) then ("--treatment-id " +  '"' + treatmentTreatmentId + '"') else ""} \
      ~{if defined(day0Day0Label) then ("--day0-label " +  '"' + day0Day0Label + '"') else ""} \
      ~{if defined(controlControlId) then ("--control-id " +  '"' + controlControlId + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{if defined(normNormMethod) then ("--norm-method " +  '"' + normNormMethod + '"') else ""} \
      ~{if defined(geneGeneTestFdrThreshold) then ("--gene-test-fdr-threshold " +  '"' + geneGeneTestFdrThreshold + '"') else ""} \
      ~{if defined(adjustAdjustMethod) then ("--adjust-method " +  '"' + adjustAdjustMethod + '"') else ""} \
      ~{if defined(varianceVarianceEstimationSamples) then ("--variance-estimation-samples " +  '"' + varianceVarianceEstimationSamples + '"') else ""} \
      ~{if defined(sortSortCriteria) then ("--sort-criteria " +  '"' + sortSortCriteria + '"') else ""} \
      ~{if defined(removeRemoveZero) then ("--remove-zero " +  '"' + removeRemoveZero + '"') else ""} \
      ~{if defined(removeRemoveZeroThreshold) then ("--remove-zero-threshold " +  '"' + removeRemoveZeroThreshold + '"') else ""} \
      ~{true="--pdf-report" false="" pdfPdfReport} \
      ~{if defined(geneGeneLfcMethod) then ("--gene-lfc-method " +  '"' + geneGeneLfcMethod + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(controlControlSgRna) then ("--control-sgrna " +  '"' + controlControlSgRna + '"') else ""} \
      ~{if defined(controlControlGene) then ("--control-gene " +  '"' + controlControlGene + '"') else ""} \
      ~{true="--normcounts-to-file" false="" normNormCountsToFile} \
      ~{if defined(skipSkipGene) then ("--skip-gene " +  '"' + skipSkipGene + '"') else ""} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{if defined(additionalAdditionalRraParameters) then ("--additional-rra-parameters " +  '"' + additionalAdditionalRraParameters + '"') else ""} \
      ~{if defined(cnvCnvNorm) then ("--cnv-norm " +  '"' + cnvCnvNorm + '"') else ""} \
      ~{if defined(cellCellLine) then ("--cell-line " +  '"' + cellCellLine + '"') else ""} \
      ~{if defined(cnvCnvEst) then ("--cnv-est " +  '"' + cnvCnvEst + '"') else ""}
  >>>
}