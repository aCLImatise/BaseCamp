version 1.0

task SeuratNormaliseData.R {
  input {
    String inputInputObjectFile
    String inputInputFormat
    String outputOutputFormat
    String normalizationNormalizationMethod
    String scaleScaleFactor
    String outputOutputObjectFile
    String marginMargin
    String blockBlockSize
  }
  command <<<
    seurat-normalise-data.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(normalizationNormalizationMethod) then ("--normalization-method " +  '"' + normalizationNormalizationMethod + '"') else ""} \
      ~{if defined(scaleScaleFactor) then ("--scale-factor " +  '"' + scaleScaleFactor + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(marginMargin) then ("--margin " +  '"' + marginMargin + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""}
  >>>
}