version 1.0

task PreprocessDataset {
  input {
    Boolean disableDisableFiltering
    Boolean disableDisableRnaShapes
    Boolean disableDisableRnaStructure
    Boolean generateGenerateNegative
    Int minMinScore
    Int minMinLength
    Int maxMaxLength
    String elongationElongation
    String genomeGenomeGenes
    Boolean skipSkipCheck
    String? workingWorkingDir
    String? datasetDatasetName
    String? inputInput
    String? genomeGenome
    String? genomeGenomeSizes
  }
  command <<<
    preprocess_dataset \
      ~{workingWorkingDir} \
      ~{true="--disable_filtering" false="" disableDisableFiltering} \
      ~{true="--disable_RNAshapes" false="" disableDisableRnaShapes} \
      ~{true="--disable_RNAstructure" false="" disableDisableRnaStructure} \
      ~{true="--generate_negative" false="" generateGenerateNegative} \
      ~{if defined(minMinScore) then ("--min_score " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max_length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(elongationElongation) then ("--elongation " +  '"' + elongationElongation + '"') else ""} \
      ~{if defined(genomeGenomeGenes) then ("--genome_genes " +  '"' + genomeGenomeGenes + '"') else ""} \
      ~{true="--skip_check" false="" skipSkipCheck} \
      ~{datasetDatasetName} \
      ~{inputInput} \
      ~{genomeGenome} \
      ~{genomeGenomeSizes}
  >>>
}