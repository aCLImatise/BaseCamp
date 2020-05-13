version 1.0

task Sc3Sc3CalcConsens.R {
  input {
    String inputInputObjectFile
    String outputOutputTextFile
    String outputOutputObjectFile
  }
  command <<<
    sc3-sc3-calc-consens.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}