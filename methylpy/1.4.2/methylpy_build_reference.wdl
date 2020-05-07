version 1.0

task MethylpyBuildReference {
  input {
    Array[String]+ inputInputFiles
    String outputOutputPrefix
    String numNumProcs
    String alignerAligner
    File pathPathToAligner
    String buffBuffSize
  }
  command <<<
    methylpy build-reference \
      ~{if defined(inputInputFiles) then ("--input-files " +  '"' + inputInputFiles + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(pathPathToAligner) then ("--path-to-aligner " +  '"' + pathPathToAligner + '"') else ""} \
      ~{if defined(buffBuffSize) then ("--buffsize " +  '"' + buffBuffSize + '"') else ""}
  >>>
}