version 1.0

task Sc3Sc3CalcBiology.R {
  input {
    String inputInputObjectFile
    String outputOutputTextFile
    String ksKs
    String regimeRegime
    String outputOutputObjectFile
  }
  command <<<
    sc3-sc3-calc-biology.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(outputOutputTextFile) then ("--output-text-file " +  '"' + outputOutputTextFile + '"') else ""} \
      ~{if defined(ksKs) then ("--ks " +  '"' + ksKs + '"') else ""} \
      ~{if defined(regimeRegime) then ("--regime " +  '"' + regimeRegime + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}