version 1.0

task AnviScriptComputeAniForFasta {
  input {
    String fastFastAFile
    String outputOutputDir
    String panPanDb
    String numNumThreads
    File logLogFile
    String methodMethod
    String distanceDistance
    String linkageLinkage
    Boolean justJustDoIt
  }
  command <<<
    anvi-script-compute-ani-for-fasta \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(panPanDb) then ("--pan-db " +  '"' + panPanDb + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""} \
      ~{true="--just-do-it" false="" justJustDoIt}
  >>>
}