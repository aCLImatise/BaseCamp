version 1.0

task OBoxplots.R {
  input {
    String mappingMappingVar
    String outputOutputDirectory
    String removeRemoveOutliers
    String pdfPdfHeight
    String? thisThisScriptR
    String? inputInputMatrix
    String? sampleSampleMapping
  }
  command <<<
    o-boxplots.R \
      ~{thisThisScriptR} \
      ~{if defined(mappingMappingVar) then ("--mapping_var " +  '"' + mappingMappingVar + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output_directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(removeRemoveOutliers) then ("--remove_outliers " +  '"' + removeRemoveOutliers + '"') else ""} \
      ~{if defined(pdfPdfHeight) then ("--pdf_height " +  '"' + pdfPdfHeight + '"') else ""} \
      ~{inputInputMatrix} \
      ~{sampleSampleMapping}
  >>>
}