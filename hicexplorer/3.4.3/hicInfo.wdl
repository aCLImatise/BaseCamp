version 1.0

task HicInfo {
  input {
    Array[String]+ matricesMatrices
    String outOutFilename
    Boolean noNoMetadata
  }
  command <<<
    hicInfo \
      ~{if defined(matricesMatrices) then ("--matrices " +  '"' + matricesMatrices + '"') else ""} \
      ~{if defined(outOutFilename) then ("--outFileName " +  '"' + outOutFilename + '"') else ""} \
      ~{true="--no_metadata" false="" noNoMetadata}
  >>>
}