version 1.0

task ImfusionMerge {
  input {
    Array[String]+ sampleSampleDirs
    String outputOutput
    Array[String]+ namesNames
    String outputOutputExpression
  }
  command <<<
    imfusion-merge \
      ~{if defined(sampleSampleDirs) then ("--sample_dirs " +  '"' + sampleSampleDirs + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(namesNames) then ("--names " +  '"' + namesNames + '"') else ""} \
      ~{if defined(outputOutputExpression) then ("--output_expression " +  '"' + outputOutputExpression + '"') else ""}
  >>>
}