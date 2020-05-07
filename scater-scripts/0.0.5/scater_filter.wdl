version 1.0

task ScaterFilter.R {
  input {
    String inputInputObjectFile
    String subsetSubsetCellVariables
    String lowLowCellThresholds
    String highHighCellThresholds
    String cellsCellsUse
    String cellsCellsDiscard
    String subsetSubsetFeatureVariables
    String lowLowFeatureThresholds
    String highHighFeatureThresholds
    String featuresFeaturesUse
    String outputOutputObjectFile
    String outputOutputCellSelectFile
    String outputOutputFeatureSelectFile
  }
  command <<<
    scater-filter.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(subsetSubsetCellVariables) then ("--subset-cell-variables " +  '"' + subsetSubsetCellVariables + '"') else ""} \
      ~{if defined(lowLowCellThresholds) then ("--low-cell-thresholds " +  '"' + lowLowCellThresholds + '"') else ""} \
      ~{if defined(highHighCellThresholds) then ("--high-cell-thresholds " +  '"' + highHighCellThresholds + '"') else ""} \
      ~{if defined(cellsCellsUse) then ("--cells-use " +  '"' + cellsCellsUse + '"') else ""} \
      ~{if defined(cellsCellsDiscard) then ("--cells-discard " +  '"' + cellsCellsDiscard + '"') else ""} \
      ~{if defined(subsetSubsetFeatureVariables) then ("--subset-feature-variables " +  '"' + subsetSubsetFeatureVariables + '"') else ""} \
      ~{if defined(lowLowFeatureThresholds) then ("--low-feature-thresholds " +  '"' + lowLowFeatureThresholds + '"') else ""} \
      ~{if defined(highHighFeatureThresholds) then ("--high-feature-thresholds " +  '"' + highHighFeatureThresholds + '"') else ""} \
      ~{if defined(featuresFeaturesUse) then ("--features-use " +  '"' + featuresFeaturesUse + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(outputOutputCellSelectFile) then ("--output-cellselect-file " +  '"' + outputOutputCellSelectFile + '"') else ""} \
      ~{if defined(outputOutputFeatureSelectFile) then ("--output-featureselect-file " +  '"' + outputOutputFeatureSelectFile + '"') else ""}
  >>>
}