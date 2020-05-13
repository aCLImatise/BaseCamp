version 1.0

task HicMergeLoops {
  input {
    Array[String]+ inputInputFiles
    String outOutFilename
    String lowestLowestResolution
  }
  command <<<
    hicMergeLoops \
      ~{if defined(inputInputFiles) then ("--inputFiles " +  '"' + inputInputFiles + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{if defined(lowestLowestResolution) then ("--lowestResolution " +  '"' + lowestLowestResolution + '"') else ""}
  >>>
}