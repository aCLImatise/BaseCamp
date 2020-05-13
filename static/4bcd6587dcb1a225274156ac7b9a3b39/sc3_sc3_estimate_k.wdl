version 1.0

task Sc3Sc3EstimateK.R {
  input {
    String inputInputObjectFile
    String outputOutputObjectFile
    String outputOutputTextFile
  }
  command <<<
    sc3-sc3-estimate-k.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""}
  >>>
}