version 1.0

task ScHicMergeToSCool {
  input {
    Array[String]+ matricesMatrices
    String outOutFilename
  }
  command <<<
    scHicMergeToSCool \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""}
  >>>
}