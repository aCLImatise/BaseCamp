version 1.0

task DropletutilsBarcoderanks.R {
  input {
    String inputInputObjectFile
    String lowerLower
    String fitFitBounds
    String outputOutputObjectFile
    String outputOutputPngFile
  }
  command <<<
    dropletutils-barcoderanks.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(lowerLower) then ("--lower " +  '"' + lowerLower + '"') else ""} \
      ~{if defined(fitFitBounds) then ("--fit-bounds " +  '"' + fitFitBounds + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(outputOutputPngFile) then ("--output-png-file " +  '"' + outputOutputPngFile + '"') else ""}
  >>>
}