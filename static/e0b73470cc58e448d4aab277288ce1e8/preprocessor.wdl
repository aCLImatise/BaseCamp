version 1.0

task Preprocessor.py {
  input {
    String inputInputFile
    String chromChromSize
    String outOutPrefix
    String kmKmErSize
    String binBin
    String depthDepth
    String qQCut
    String methodMethod
  }
  command <<<
    preprocessor.py \
      ~{if defined(inputInputFile) then ("--inputFile " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(chromChromSize) then ("--chromSize " +  '"' + chromChromSize + '"') else ""} \
      ~{if defined(outOutPrefix) then ("--outPrefix " +  '"' + outOutPrefix + '"') else ""} \
      ~{if defined(kmKmErSize) then ("--kmerSize " +  '"' + kmKmErSize + '"') else ""} \
      ~{if defined(binBin) then ("--bin " +  '"' + binBin + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(qQCut) then ("--qCut " +  '"' + qQCut + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""}
  >>>
}