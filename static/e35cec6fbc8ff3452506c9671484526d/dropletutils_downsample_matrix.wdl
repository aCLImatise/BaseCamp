version 1.0

task DropletutilsDownsampleMatrix.R {
  input {
    String inputInputObjectFile
    String propProp
    String byByCol
    String outputOutputObjectFile
  }
  command <<<
    dropletutils-downsample-matrix.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(propProp) then ("--prop " +  '"' + propProp + '"') else ""} \
      ~{if defined(byByCol) then ("--bycol " +  '"' + byByCol + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}