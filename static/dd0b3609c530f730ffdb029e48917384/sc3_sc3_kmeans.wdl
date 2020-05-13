version 1.0

task Sc3Sc3Kmeans.R {
  input {
    String inputInputObjectFile
    String ksKs
    String outputOutputObjectFile
  }
  command <<<
    sc3-sc3-kmeans.R \
      ~{if defined(inputInputObjectFile) then ("--input-object-file " +  '"' + inputInputObjectFile + '"') else ""} \
      ~{if defined(ksKs) then ("--ks " +  '"' + ksKs + '"') else ""} \
      ~{if defined(outputOutputObjectFile) then ("--output-object-file " +  '"' + outputOutputObjectFile + '"') else ""}
  >>>
}