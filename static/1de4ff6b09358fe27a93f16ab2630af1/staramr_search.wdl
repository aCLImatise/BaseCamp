version 1.0

task StaramrSearch {
  input {
    String pointPointFinderOrganism
    String plasmidPlasmidFinderDatabaseType
    String databaseDatabase
    String nprocsNprocs
    Boolean ignoreIgnoreInvalidFiles
    String mlstMlstScheme
    String genomeGenomeSizeLowerBound
    String genomeGenomeSizeUpperBound
    Int minimumMinimumN50Value
    Int minimumMinimumContigLength
    String unacceptableUnacceptableNumberContigs
    String pidPidThreshold
    String percentPercentLengthOverlapResFinder
    String percentPercentLengthOverlapPointFinder
    String percentPercentLengthOverlapPlasmidFinder
    Boolean noNoExcludeGenes
    String excludeExcludeGenesFile
    Boolean excludeExcludeNegatives
    Boolean excludeExcludeResistancePhenotypes
    Boolean reportReportAllBlast
    String outputOutputDir
    String outputOutputSummary
    String outputOutputDetailedSummary
    String outputOutputResFinder
    String outputOutputPointFinder
    String outputOutputPlasmidFinder
    String outputOutputSettings
    String outputOutputExcel
    String outputOutputHitsDir
    String outputOutputMlst
  }
  command <<<
    staramr search \
      ~{if defined(pointPointFinderOrganism) then ("--pointfinder-organism " +  '"' + pointPointFinderOrganism + '"') else ""} \
      ~{if defined(plasmidPlasmidFinderDatabaseType) then ("--plasmidfinder-database-type " +  '"' + plasmidPlasmidFinderDatabaseType + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(nprocsNprocs) then ("--nprocs " +  '"' + nprocsNprocs + '"') else ""} \
      ~{true="--ignore-invalid-files" false="" ignoreIgnoreInvalidFiles} \
      ~{if defined(mlstMlstScheme) then ("--mlst-scheme " +  '"' + mlstMlstScheme + '"') else ""} \
      ~{if defined(genomeGenomeSizeLowerBound) then ("--genome-size-lower-bound " +  '"' + genomeGenomeSizeLowerBound + '"') else ""} \
      ~{if defined(genomeGenomeSizeUpperBound) then ("--genome-size-upper-bound " +  '"' + genomeGenomeSizeUpperBound + '"') else ""} \
      ~{if defined(minimumMinimumN50Value) then ("--minimum-N50-value " +  '"' + minimumMinimumN50Value + '"') else ""} \
      ~{if defined(minimumMinimumContigLength) then ("--minimum-contig-length " +  '"' + minimumMinimumContigLength + '"') else ""} \
      ~{if defined(unacceptableUnacceptableNumberContigs) then ("--unacceptable-number-contigs " +  '"' + unacceptableUnacceptableNumberContigs + '"') else ""} \
      ~{if defined(pidPidThreshold) then ("--pid-threshold " +  '"' + pidPidThreshold + '"') else ""} \
      ~{if defined(percentPercentLengthOverlapResFinder) then ("--percent-length-overlap-resfinder " +  '"' + percentPercentLengthOverlapResFinder + '"') else ""} \
      ~{if defined(percentPercentLengthOverlapPointFinder) then ("--percent-length-overlap-pointfinder " +  '"' + percentPercentLengthOverlapPointFinder + '"') else ""} \
      ~{if defined(percentPercentLengthOverlapPlasmidFinder) then ("--percent-length-overlap-plasmidfinder " +  '"' + percentPercentLengthOverlapPlasmidFinder + '"') else ""} \
      ~{true="--no-exclude-genes" false="" noNoExcludeGenes} \
      ~{if defined(excludeExcludeGenesFile) then ("--exclude-genes-file " +  '"' + excludeExcludeGenesFile + '"') else ""} \
      ~{true="--exclude-negatives" false="" excludeExcludeNegatives} \
      ~{true="--exclude-resistance-phenotypes" false="" excludeExcludeResistancePhenotypes} \
      ~{true="--report-all-blast" false="" reportReportAllBlast} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(outputOutputSummary) then ("--output-summary " +  '"' + outputOutputSummary + '"') else ""} \
      ~{if defined(outputOutputDetailedSummary) then ("--output-detailed-summary " +  '"' + outputOutputDetailedSummary + '"') else ""} \
      ~{if defined(outputOutputResFinder) then ("--output-resfinder " +  '"' + outputOutputResFinder + '"') else ""} \
      ~{if defined(outputOutputPointFinder) then ("--output-pointfinder " +  '"' + outputOutputPointFinder + '"') else ""} \
      ~{if defined(outputOutputPlasmidFinder) then ("--output-plasmidfinder " +  '"' + outputOutputPlasmidFinder + '"') else ""} \
      ~{if defined(outputOutputSettings) then ("--output-settings " +  '"' + outputOutputSettings + '"') else ""} \
      ~{if defined(outputOutputExcel) then ("--output-excel " +  '"' + outputOutputExcel + '"') else ""} \
      ~{if defined(outputOutputHitsDir) then ("--output-hits-dir " +  '"' + outputOutputHitsDir + '"') else ""} \
      ~{if defined(outputOutputMlst) then ("--output-mlst " +  '"' + outputOutputMlst + '"') else ""}
  >>>
}