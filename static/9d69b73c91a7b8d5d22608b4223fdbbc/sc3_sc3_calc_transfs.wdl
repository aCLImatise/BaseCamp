version 1.0

task Sc3Sc3CalcTransfs.R {
  input {
    String inputInputObjectFile
    String outputOutputObjectFile
  }
  command <<<
    sc3-sc3-calc-transfs.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}